//! Crate root for the `gtnh-nix` tool.
//!
//! The crate has three top-level responsibilities, each in its own module:
//!
//! - [`parsers`] — chumsky-based lexers and parsers for the seven config
//!   formats found in a GTNH pack (Forge typed/untyped, HOCON, INI, JSON,
//!   XML, Properties). Every parser produces the unified [`Ir`] tree.
//! - [`nix_gen`] — discovers config files in a pack, dispatches each to the
//!   right parser, and emits one Nix `lib.mkOption` file per mod group.
//! - [`normalize`] — semantic-equivalence comparator used by `nix flake
//!   check`: parses an original config and its Nix-rendered counterpart,
//!   normalizes both sides, and exits non-zero on mismatch.
//!
//! The CLI in `src/main.rs` exposes each of these as a subcommand
//! (`gen`, `normalize`, `parse`).
//!
//! ## The [`Ir`] tree
//!
//! All parsers converge on [`Ir`], a small enum that can represent any of
//! the supported formats. Format-specific quirks (XML attributes, Forge
//! type prefixes, HOCON braceless objects) are flattened into this common
//! shape so downstream code (option generation, normalization) doesn't
//! need to know which format a file came from.
//!
//! ## Parser trait
//!
//! Each parser implements [`GTNHParser`], which fixes the two-stage shape:
//! a lexer over `&str` producing `Vec<Spanned<LexerToken>>`, then a parser
//! over those tokens producing `Spanned<ParserExpr>`. The trait's
//! [`GTNHParser::parse`] method runs both stages and converts the parser's
//! expression into an [`Ir`] via [`From`].

pub mod nix_gen;
pub mod normalize;
pub mod parsers;

use chumsky::{error::Rich, extra::Err, span::SimpleSpan, Parser};
use snafu::prelude::*;
use std::collections::HashMap;
use std::fmt::Debug;

/// Byte-offset span produced by chumsky for every lexer/parser token. Used
/// for diagnostics and (in the XML parser) for detecting whitespace gaps
/// between adjacent tokens.
pub type Span = SimpleSpan;

/// A value paired with the source span it was parsed from.
pub type Spanned<T> = (T, Span);

/// Unified intermediate representation for every supported config format.
///
/// Every parser produces an `Ir` tree, regardless of the source format.
/// This is what `nix_gen` walks to emit option definitions and what
/// `normalize` compares to validate round-trips.
///
/// Variants:
/// - [`Ir::Null`] — JSON `null`. The renderer has no null sentinel, so
///   `normalize` treats this as equal to the literal string `"None"`.
/// - [`Ir::Bool`], [`Ir::Int`], [`Ir::Real`], [`Ir::Str`] — scalar leaves.
/// - [`Ir::Documented`] — a scalar or node wrapped with a doc comment
///   (extracted from preceding `#` / `//` / `<!--` comments).
/// - [`Ir::Node`] — a structural node. The shape of `attrs` and
///   `children` together encodes objects, arrays, and XML elements:
///   - `attrs=Some, children=None` — object/map
///   - `attrs=None, children=Some` — array/list
///   - `attrs=Some, children=Some` — XML element with attributes and
///     element children
///   - `tag=Some` — XML element name; `tag=None` for plain objects.
#[derive(Clone, Debug, PartialEq)]
pub enum Ir {
    /// Explicit null (JSON `null`).
    Null,
    /// Boolean literal.
    Bool(bool),
    /// Integer literal. Out-of-range values fall back to [`Ir::Str`] via
    /// [`parse_number`].
    Int(i64),
    /// Floating-point literal.
    Real(f64),
    /// String literal. Also used as a fallback when a numeric parse fails.
    Str(String),
    /// A value annotated with a doc string (typically extracted from a
    /// preceding comment block). The renderer uses this to emit a
    /// `description = "..."` field on the generated option.
    Documented {
        /// Doc string, joined with `\n` if multiple comment lines were
        /// merged.
        doc: String,
        /// The wrapped value.
        inner: Box<Ir>,
    },
    /// A structural node — object, array, or XML element. See the variant
    /// docs on [`Ir`] for the meaning of each field combination.
    Node {
        /// XML element name. `None` for plain JSON/HOCON/Forge objects.
        tag: Option<String>,
        /// Map of named children. `None` if the node is a pure list.
        attrs: Option<HashMap<String, Self>>,
        /// Ordered list of child values. `None` if the node is a pure
        /// map. Coexists with `attrs` for XML elements that have both
        /// attributes and element children.
        children: Option<Vec<Self>>,
    },
}

/// Parse a numeric string into the narrowest Ir variant that fits.
///
/// Tries i64 first, then f64, falling back to Ir::Str if both overflow or
/// fail. Used by all parsers to avoid panics on out-of-range numbers
/// (e.g. JSON quest IDs that exceed i32::MAX).
pub fn parse_number(s: &str) -> Ir {
    let trimmed = s.trim();
    if let Ok(i) = trimmed.parse::<i64>() {
        Ir::Int(i)
    } else if let Ok(f) = trimmed.parse::<f64>() {
        Ir::Real(f)
    } else {
        Ir::Str(trimmed.to_string())
    }
}

impl Ir {
    /// Wrap `self` in an [`Ir::Documented`] if `doc` is `Some` and
    /// non-empty; otherwise return `self` unchanged.
    ///
    /// Used by the parsers to attach pending comment blocks to the next
    /// value they emit.
    pub fn with_doc(self, doc: Option<String>) -> Self {
        match doc {
            Some(doc) if !doc.is_empty() => Ir::Documented {
                doc,
                inner: Box::new(self),
            },
            _ => self,
        }
    }
}

/// Error type returned by [`GTNHParser::parse`].
///
/// chumsky errors are stringified eagerly so they can outlive the
/// borrowed input — diagnostic spans/IDs aren't preserved past the parse
/// call.
#[derive(Debug, Snafu)]
pub enum GtnhParserError {
    /// One or more errors during lexing.
    #[snafu(display("Lexer errors: {:?}", errors))]
    LexerError {
        /// Pretty-printed chumsky errors, one per failure.
        errors: Vec<String>,
    },
    /// One or more errors during parsing of the lexer's token stream.
    #[snafu(display("Parser errors: {:?}", errors))]
    ParserError {
        /// Pretty-printed chumsky errors, one per failure.
        errors: Vec<String>,
    },
}

/// Common interface implemented by every parser in [`crate::parsers`].
///
/// Implementors define a two-stage pipeline:
///
/// 1. [`Self::lexer`] — `&str` → `Vec<Spanned<LexerToken>>`. Tokenizes
///    the source and discards/collapses irrelevant whitespace.
/// 2. [`Self::parser`] — `&[Spanned<LexerToken>]` → `Spanned<ParserExpr>`.
///    Parses the token stream into a format-specific AST.
///
/// The default [`Self::parse`] implementation runs both stages, converts
/// the AST into [`Ir`] via [`From`], and packages chumsky errors into
/// [`GtnhParserError`].
pub trait GTNHParser {
    /// Token type produced by [`Self::lexer`]. Must be `'static` so the
    /// lexer's output can be borrowed by the parser without lifetime
    /// gymnastics.
    type LexerToken: 'static + PartialEq + Debug;
    /// AST node returned by [`Self::parser`]. Must convert into [`Ir`].
    type ParserExpr: PartialEq + Into<Ir>;

    /// Build the lexer. Implementations typically use `chumsky::text` and
    /// `padded_by` to handle whitespace.
    fn lexer<'a>() -> impl Parser<'a, &'a str, Vec<Spanned<Self::LexerToken>>, Err<Rich<'a, char>>>;

    /// Build the parser. Implementations consume the lexer's spanned
    /// token slice.
    fn parser<'b>() -> impl Parser<
        'b,
        &'b [Spanned<Self::LexerToken>],
        Spanned<Self::ParserExpr>,
        Err<Rich<'b, Spanned<Self::LexerToken>>>,
    >;

    /// Convenience: run the full lex+parse pipeline on `input` and return
    /// the resulting [`Ir`] tree.
    ///
    /// Both lex errors and parse errors are mapped into
    /// [`GtnhParserError`] variants. There is no partial-success path —
    /// any error from either stage aborts and returns `Err`.
    fn parse(input: &str) -> Result<Ir, GtnhParserError> {
        let ltt_result = Self::lexer().parse(input).into_result();

        let ltt = match ltt_result {
            Ok(ltt) => ltt,
            Result::Err(errors) => LexerSnafu {
                errors: errors
                    .iter()
                    .map(|e| format!("{:?}", e))
                    .collect::<Vec<String>>(),
            }
            .fail()?,
        };

        let parser_result = Self::parser().parse(ltt.as_slice()).into_result();

        let expr = match parser_result {
            Ok((expr, _)) => expr,
            Result::Err(errors) => ParserSnafu {
                errors: errors
                    .iter()
                    .map(|e| format!("{:?}", e))
                    .collect::<Vec<String>>(),
            }
            .fail()?,
        };

        Ok(expr.into())
    }
}

