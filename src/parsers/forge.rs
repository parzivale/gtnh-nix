//! Forge `.cfg` parser.
//!
//! Forge configs (Minecraft Forge / GTNH) come in two flavours that share
//! a parser:
//!
//! - **Typed**: lines start with a one-letter type prefix and `:` —
//!   `B:foo=true` (bool), `I:foo=42` (int), `D:foo=1.5` (real),
//!   `F:foo=1.5` (real), `S:foo=bar` (string). Lists use `<` / `>`
//!   delimiters on their own lines.
//! - **Untyped**: identical structure but without the type prefix. All
//!   values fall through to a heuristic (`infer_typed_value`).
//!
//! Sections are `name { ... }` blocks; the parser accepts both
//! `name {` on one line and `name`/`{` on consecutive lines, as well as
//! an `anonymous_section` ( bare `{ ... }` without a name) which
//! `lib.nix`'s renderer emits for empty-key sections.
//!
//! ## Tolerance / recovery
//!
//! The Python pipeline this was ported from is intentionally lenient
//! about real-world Forge configs:
//!
//! - The closing `}` is `.or_not()` — some configs (e.g.
//!   `WitcheryExtras/asm.cfg`) leave the last section unclosed at EOF.
//! - Garbage lines (e.g. NEI's `hiddenitems.cfg`, which contains bare
//!   `minecraft:portal` lines outside any section) are skipped
//!   token-by-token without aborting the parse.
//! - `S:foo="bar"` keeps the surrounding quotes as part of the value,
//!   matching the renderer's verbatim re-emit.
//! - `I:foo=4.0` is truncated to `4` to match the renderer's
//!   `int(float(...))` coercion.

use chumsky::{error::Rich, extra::Err, prelude::*, Parser};

use crate::{GTNHParser, Ir, Spanned};
use std::collections::HashMap;

/// Lexer token.
#[derive(Clone, Debug, PartialEq)]
pub enum Token {
    /// One of `B`, `I`, `D`, `S`, `F` immediately followed by `:`. The
    /// `:` is consumed separately as [`Token::Colon`] so the parser can
    /// match the prefix and colon as a pair without backtracking.
    TypePrefix(char),
    /// The `:` after a type prefix (or anywhere else).
    Colon,
    /// Atomic `=` followed by value text up to end-of-line. The lexer
    /// captures the value greedily because Forge values can contain spaces,
    /// commas, and other characters that would otherwise split as separate
    /// idents (e.g. `S:foo=a, b, c with spaces`).
    EntryValue(String),
    /// `{` opening a section body.
    OpenBrace,
    /// `}` closing a section body. May be absent on the last section of
    /// a file — the parser tolerates this.
    CloseBrace,
    /// `<` followed by one-value-per-line content up to `>` on its own line.
    /// Captured atomically for the same reason as `EntryValue` — list
    /// items can contain `>` characters (e.g. arrow syntax in
    /// MCFrames.cfg).
    AngleBlock(Vec<String>),
    /// Quoted string (typically a section name or a quoted key).
    Str(String),
    /// Unquoted identifier — section name, key, or untyped value
    /// fragment.
    Ident(String),
    /// `#` line comment.
    Comment(String),
    /// Line terminator.
    Newline,
}

/// Parser AST for one item in a Forge file.
#[derive(Clone, Debug, PartialEq)]
pub enum ForgeExpr {
    /// `[prefix:]key=value` line.
    Entry {
        /// `Some(c)` for typed (`B:`/`I:`/`D:`/`F:`/`S:`); `None` for
        /// untyped configs.
        type_prefix: Option<char>,
        /// Key (without surrounding quotes if quoted).
        key: String,
        /// Raw value text, not yet type-inferred.
        value: String,
    },
    /// `[prefix:]key < ... >` block.
    List {
        /// Same convention as [`ForgeExpr::Entry::type_prefix`].
        type_prefix: Option<char>,
        /// Key.
        key: String,
        /// One element per line inside the angle block, in source order.
        values: Vec<String>,
    },
    /// `name { ... }` block.
    Section {
        /// Section name (empty string for anonymous `{ ... }` sections).
        name: String,
        /// Items inside the braces.
        children: Vec<Spanned<ForgeExpr>>,
    },
    /// `# comment` — accumulated into the next entry/list/section's doc
    /// string.
    Doc(String),
    /// 2+ consecutive newlines — clears pending docs.
    Blank,
    /// Top-level wrapper produced only at the file root.
    File(Vec<Spanned<ForgeExpr>>),
}

impl From<ForgeExpr> for Ir {
    /// The Forge top-level parser always returns `ForgeExpr::File`. Other
    /// variants don't appear at this level; they only exist as children
    /// processed by `forge_children_to_attrs`.
    fn from(expr: ForgeExpr) -> Self {
        let children = match expr {
            ForgeExpr::File(c) => c,
            _ => return Ir::Null,
        };
        Ir::Node {
            tag: None,
            attrs: Some(forge_children_to_attrs(children)),
            children: None,
        }
    }
}

fn take_pending_doc(pending_doc: &mut Vec<String>) -> Option<String> {
    if pending_doc.is_empty() {
        None
    } else {
        Some(std::mem::take(pending_doc).join("\n"))
    }
}

fn forge_children_to_attrs(children: Vec<Spanned<ForgeExpr>>) -> HashMap<String, Ir> {
    let mut attrs = HashMap::new();
    let mut pending_doc: Vec<String> = Vec::new();

    for (child, _span) in children {
        match child {
            ForgeExpr::Doc(text) => {
                pending_doc.push(text);
            }
            ForgeExpr::Blank => {
                pending_doc.clear();
            }
            ForgeExpr::Entry {
                key,
                type_prefix,
                value,
                ..
            } => {
                let value = infer_typed_value(type_prefix, &value);
                attrs.insert(key, value.with_doc(take_pending_doc(&mut pending_doc)));
            }
            ForgeExpr::List {
                key,
                values,
                type_prefix,
            } => {
                // Type-prefix-aware list element inference: `I:<>` produces
                // Int children, `D:<>` Real, `B:<>` Bool, etc. Untyped lists
                // fall back to the heuristic in `infer_typed_value`.
                let children = values
                    .into_iter()
                    .map(|v| infer_typed_value(type_prefix, &v))
                    .collect();
                let value = Ir::Node {
                    tag: None,
                    attrs: None,
                    children: Some(children),
                };
                attrs.insert(key, value.with_doc(take_pending_doc(&mut pending_doc)));
            }
            ForgeExpr::Section { name, children } => {
                let value = Ir::Node {
                    tag: None,
                    attrs: Some(forge_children_to_attrs(children)),
                    children: None,
                };
                attrs.insert(name, value.with_doc(take_pending_doc(&mut pending_doc)));
            }
            // File appears only at the top level; never as a child.
            ForgeExpr::File(_) => {}
        }
    }
    attrs
}

fn infer_typed_value(type_prefix: Option<char>, value: &str) -> Ir {
    let trimmed = value.trim();
    match type_prefix {
        // `B:` is always Bool. Forge uses "true"/"false"; some files use
        // legacy 0/1. Match the Python renderer's convention: anything
        // case-insensitively equal to "true" is true, everything else is
        // false. This keeps round-trip via mkConfigFile consistent.
        Some('B') => Ir::Bool(trimmed.eq_ignore_ascii_case("true")),
        // `I:` is integer. Some Forge configs write the value with a
        // trailing `.0` (e.g. `I:foo=4.0`); Python's renderer truncates via
        // `int(float(...))`, so we match that to preserve round-trip.
        Some('I') => trimmed
            .parse::<i64>()
            .or_else(|_| trimmed.parse::<f64>().map(|f| f.trunc() as i64))
            .map(Ir::Int)
            .unwrap_or(Ir::Str(trimmed.to_string())),
        Some('D') | Some('F') => trimmed
            .parse::<f64>()
            .map(Ir::Real)
            .unwrap_or(Ir::Str(trimmed.to_string())),
        // Explicit `S:` prefix means "string", even if the value looks
        // numeric (`S:foo=176.0` is the string "176.0", not a float).
        // The lexer constrains TypePrefix tokens to BIDSF so other
        // characters cannot appear here.
        Some('S') | Some(_) => Ir::Str(trimmed.to_string()),
        // Untyped entry: heuristic inference (bool → int → real → str).
        None => match trimmed {
            "true" => Ir::Bool(true),
            "false" => Ir::Bool(false),
            "" => Ir::Str(String::new()),
            _ => crate::parse_number(trimmed),
        },
    }
}

/// [`GTNHParser`] implementation for Forge `.cfg` files (typed and
/// untyped).
pub struct ForgeParser;

impl GTNHParser for ForgeParser {
    type LexerToken = Token;
    type ParserExpr = ForgeExpr;

    fn lexer<'a>() -> impl Parser<'a, &'a str, Vec<Spanned<Token>>, Err<Rich<'a, char>>> {
        let newline = just('\n').to(Token::Newline);

        let comment = just('#')
            .ignore_then(none_of("\n").repeated().collect::<String>())
            .map(|s| Token::Comment(s.trim().to_string()));

        let quoted_string = just('"')
            .ignore_then(none_of("\"").repeated().collect::<String>())
            .then_ignore(just('"'))
            .map(Token::Str);

        let type_prefix = one_of("BIDSF")
            .then_ignore(just(':').rewind())
            .map(Token::TypePrefix);

        let colon = just(':').to(Token::Colon);
        let open_brace = just('{').to(Token::OpenBrace);
        let close_brace = just('}').to(Token::CloseBrace);

        // EntryValue: `=` plus everything up to (but not including) end-of-line.
        // The Python pipeline preserves surrounding quotes as part of the
        // value (`S:foo="bar"` parses as the literal string `"bar"`), so we
        // match that — the renderer re-emits the value verbatim.
        let entry_value = just('=')
            .ignore_then(none_of('\n').repeated().collect::<String>())
            .map(|s: String| Token::EntryValue(s.trim().to_string()));

        // AngleBlock: `<` then content up to a `>` that appears at the start
        // of a line (modulo leading whitespace). Detecting the close this way
        // lets list values contain `>` characters — important for arrow
        // syntax like `minecraft:bed -> minecraft:bed` in MCFrames.cfg.
        let close_marker = just('\n').then(one_of(" \t").repeated()).then(just('>'));
        let angle_block = just('<')
            .ignore_then(
                any()
                    .and_is(close_marker.clone().not())
                    .repeated()
                    .collect::<String>(),
            )
            .then_ignore(close_marker)
            .map(|content: String| {
                let values: Vec<String> = content
                    .lines()
                    .map(|l| l.trim())
                    .filter(|l| !l.is_empty() && !l.starts_with('#'))
                    .map(|l| l.to_string())
                    .collect();
                Token::AngleBlock(values)
            });

        let ident = none_of(" \t\n\r\"{}=<>:#")
            .repeated()
            .at_least(1)
            .collect::<String>()
            .map(Token::Ident);

        let token = choice((
            comment,
            newline,
            quoted_string,
            type_prefix,
            colon,
            angle_block,
            entry_value,
            open_brace,
            close_brace,
            ident,
        ));

        token
            .map_with(|tok, e| (tok, e.span()))
            .padded_by(one_of(" \t\r").repeated())
            .repeated()
            .collect()
    }

    fn parser<'b>(
    ) -> impl Parser<'b, &'b [Spanned<Token>], Spanned<ForgeExpr>, Err<Rich<'b, Spanned<Token>>>>
    {
        recursive(|items| {
            let comment = any().try_map(|(tok, span): Spanned<Token>, _| match tok {
                Token::Comment(s) => Ok((ForgeExpr::Doc(s), span)),
                _ => Err(Rich::custom(span, "expected comment")),
            });
            let newline = any().filter(|(tok, _): &Spanned<Token>| *tok == Token::Newline);
            let skip = choice((
                any().filter(|(tok, _): &Spanned<Token>| matches!(tok, Token::Comment(_))),
                newline.clone(),
            ));

            let type_prefix = any().try_map(|(tok, span): Spanned<Token>, _| match tok {
                Token::TypePrefix(c) => Ok(c),
                _ => Err(Rich::custom(span, "expected type prefix")),
            });

            let colon = any().filter(|(tok, _): &Spanned<Token>| *tok == Token::Colon);
            let open_brace = any().filter(|(tok, _): &Spanned<Token>| *tok == Token::OpenBrace);
            let close_brace = any().filter(|(tok, _): &Spanned<Token>| *tok == Token::CloseBrace);

            let key_name = any().try_map(|(tok, span): Spanned<Token>, _| match tok {
                Token::Str(s) | Token::Ident(s) => Ok(s),
                _ => Err(Rich::custom(span, "expected key name")),
            });

            let entry_value = any().try_map(|(tok, span): Spanned<Token>, _| match tok {
                Token::EntryValue(s) => Ok(s),
                _ => Err(Rich::custom(span, "expected entry value")),
            });

            let angle_block = any().try_map(|(tok, span): Spanned<Token>, _| match tok {
                Token::AngleBlock(values) => Ok(values),
                _ => Err(Rich::custom(span, "expected angle block")),
            });

            let typed_entry = type_prefix
                .then_ignore(colon.clone())
                .then(key_name.clone())
                .then(entry_value.clone())
                .map_with(|((tp, key), value), e| {
                    (
                        ForgeExpr::Entry {
                            type_prefix: Some(tp),
                            key,
                            value,
                        },
                        e.span(),
                    )
                });

            let typed_list = type_prefix
                .then_ignore(colon)
                .then(key_name.clone())
                .then(angle_block.clone())
                .map_with(|((tp, key), values), e| {
                    (
                        ForgeExpr::List {
                            type_prefix: Some(tp),
                            key,
                            values,
                        },
                        e.span(),
                    )
                });

            let untyped_entry = key_name
                .clone()
                .then(entry_value)
                .map_with(|(key, value), e| {
                    (
                        ForgeExpr::Entry {
                            type_prefix: None,
                            key,
                            value,
                        },
                        e.span(),
                    )
                });

            let untyped_list = key_name.clone().then(angle_block).map_with(|(key, values), e| {
                (
                    ForgeExpr::List {
                        type_prefix: None,
                        key,
                        values,
                    },
                    e.span(),
                )
            });

            // The closing brace is `.or_not()` because some real-world
            // Forge configs (e.g. WitcheryExtras/asm.cfg in 2.8.4) leave the
            // final section unclosed at EOF. Python's parser is similarly
            // tolerant — it just stops when the input ends.
            let section = key_name
                .then(
                    skip.clone()
                        .repeated()
                        .ignore_then(open_brace.clone())
                        .ignore_then(items.clone())
                        .then_ignore(close_brace.clone().or_not()),
                )
                .map_with(|(name, children), e| (ForgeExpr::Section { name, children }, e.span()));

            // Anonymous section: `{ ... }` with no preceding name. lib.nix's
            // forge renderer emits these for empty-string keys (e.g. the
            // HungerOverhaul `" "` source section). Treated as a section with
            // an empty name so the empty-key filter in normalize/IR drops it.
            let anonymous_section = open_brace
                .clone()
                .ignore_then(items)
                .then_ignore(close_brace.clone().or_not())
                .map_with(|children, e| {
                    (
                        ForgeExpr::Section {
                            name: String::new(),
                            children,
                        },
                        e.span(),
                    )
                });

            let item = choice((
                typed_list,
                typed_entry,
                section,
                anonymous_section,
                untyped_list,
                untyped_entry,
            ));

            // 2+ consecutive newlines = blank line; clears pending docs.
            let blank = newline
                .clone()
                .then(newline.clone().repeated().at_least(1).collect::<Vec<_>>())
                .map_with(|_, e| (ForgeExpr::Blank, e.span()));

            // Garbage-line recovery: some Forge-format files (e.g. NEI's
            // hiddenitems.cfg) contain freeform lines like `minecraft:portal`
            // that aren't entries, lists, or sections. Skip them token-by-token
            // until the next newline so the surrounding file still parses.
            // Braces are structural delimiters and must never be consumed here.
            let garbage = any()
                .filter(|(tok, _): &Spanned<Token>| {
                    !matches!(
                        tok,
                        Token::Newline
                            | Token::Comment(_)
                            | Token::OpenBrace
                            | Token::CloseBrace
                    )
                })
                .repeated()
                .at_least(1)
                .to(None);

            choice((
                blank.map(Some),
                item.map(Some),
                comment.map(Some),
                newline.to(None),
                garbage,
            ))
            .repeated()
            .collect::<Vec<_>>()
            .map(|items| items.into_iter().flatten().collect::<Vec<_>>())
        })
        .map_with(|children, e| (ForgeExpr::File(children), e.span()))
    }
}
