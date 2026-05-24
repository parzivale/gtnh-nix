//! Java `.properties` parser.
//!
//! Standard line-oriented format: `key=value` or `key:value`, with `#` /
//! `!` line comments. Whitespace around the key and value is trimmed.
//! There are no sections — nested structure is conventionally encoded by
//! dotted keys (e.g. `a.b.c=value`).
//!
//! Detected for files with the `.properties` extension or any file that
//! looks like flat key=value with no braces or `[section]` headers.
//!
//! Comments immediately preceding an entry are attached as doc strings.
//! Two or more consecutive blank lines clear the pending doc.
//!
//! Value types are inferred (bool / int / float / string) — see
//! `infer_type`.

use chumsky::{error::Rich, extra::Err, prelude::*, Parser};

use crate::{GTNHParser, Ir, Spanned};
use std::collections::HashMap;

/// Lexer token. Newlines are significant because entries are
/// line-terminated.
#[derive(Clone, Debug, PartialEq)]
pub enum Token {
    /// Key text up to (but not including) `=` or `:`. Whitespace is
    /// trimmed.
    Key(String),
    /// `=` or `:` between key and value.
    Equals,
    /// Value text up to end-of-line. Whitespace is trimmed.
    Value(String),
    /// `#` or `!` comment text, stripped of the leading marker.
    Comment(String),
    /// Line terminator.
    Newline,
}

/// One line of parsed properties content.
#[derive(Clone, Debug, PartialEq)]
pub enum PropertiesItem {
    /// A `key = value` line. Value is the raw string, not yet
    /// type-inferred.
    Entry(String, String),
    /// A comment line. Consecutive `Doc`s are concatenated and attached
    /// to the next `Entry`.
    Doc(String),
    /// A pair (or more) of consecutive newlines. Resets pending docs so
    /// they don't attach across a blank-line boundary.
    Blank,
}

/// Top-level parser expression. A file is just a flat sequence of items.
#[derive(Clone, Debug, PartialEq)]
pub enum PropertiesExpr {
    /// The whole file.
    File(Vec<PropertiesItem>),
}

impl From<PropertiesExpr> for Ir {
    fn from(expr: PropertiesExpr) -> Self {
        match expr {
            PropertiesExpr::File(items) => {
                let mut attrs = HashMap::new();
                let mut pending_doc: Vec<String> = Vec::new();

                for item in items {
                    match item {
                        PropertiesItem::Doc(text) => pending_doc.push(text),
                        PropertiesItem::Blank => pending_doc.clear(),
                        PropertiesItem::Entry(k, v) => {
                            let value = infer_type(&v);
                            let doc = if pending_doc.is_empty() {
                                None
                            } else {
                                Some(std::mem::take(&mut pending_doc).join("\n"))
                            };
                            attrs.insert(k, value.with_doc(doc));
                        }
                    }
                }

                Ir::Node {
                    tag: None,
                    attrs: Some(attrs),
                    children: None,
                }
            }
        }
    }
}

/// Type-infer a properties value: bool → int → float → string.
///
/// Only the exact tokens `true` and `false` are treated as booleans
/// (case-sensitive). Anything else falls through to [`crate::parse_number`],
/// which tries `i64`, then `f64`, then keeps the raw string.
fn infer_type(v: &str) -> Ir {
    let trimmed = v.trim();
    match trimmed {
        "true" => Ir::Bool(true),
        "false" => Ir::Bool(false),
        _ => crate::parse_number(trimmed),
    }
}

/// [`GTNHParser`] implementation for Java `.properties` files.
pub struct PropertiesParser;

impl GTNHParser for PropertiesParser {
    type LexerToken = Token;
    type ParserExpr = PropertiesExpr;

    fn lexer<'a>() -> impl Parser<'a, &'a str, Vec<Spanned<Token>>, Err<Rich<'a, char>>> {
        let newline = just('\n').to(Token::Newline);

        let comment = one_of("#!")
            .ignore_then(none_of("\n").repeated().collect::<String>())
            .map(|s| Token::Comment(s.trim().to_string()));

        let key = none_of("=:\n#!")
            .repeated()
            .at_least(1)
            .collect::<String>()
            .map(|s| Token::Key(s.trim().to_string()));

        let equals = one_of("=:").to(Token::Equals);

        let value = none_of("\n")
            .repeated()
            .collect::<String>()
            .map(|s| Token::Value(s.trim().to_string()));

        let entry = key
            .map_with(|tok, e| (tok, e.span()))
            .then(equals.map_with(|tok, e| (tok, e.span())))
            .then(value.map_with(|tok, e| (tok, e.span())))
            .map(|((k, eq), v)| vec![k, eq, v]);

        let comment_line = comment.map_with(|tok, e| vec![(tok, e.span())]);
        let newline_tok = newline.map_with(|tok, e| vec![(tok, e.span())]);

        let line = choice((entry, comment_line, newline_tok));

        line.repeated()
            .collect::<Vec<Vec<_>>>()
            .map(|lines| lines.into_iter().flatten().collect())
    }

    fn parser<'b>(
    ) -> impl Parser<'b, &'b [Spanned<Token>], Spanned<PropertiesExpr>, Err<Rich<'b, Spanned<Token>>>>
    {
        let key = any().try_map(|(tok, span): Spanned<Token>, _| match tok {
            Token::Key(s) => Ok(s),
            _ => Err(Rich::custom(span, "expected key")),
        });

        let equals = any().filter(|(tok, _): &Spanned<Token>| *tok == Token::Equals);

        let value = any().try_map(|(tok, span): Spanned<Token>, _| match tok {
            Token::Value(s) => Ok(s),
            _ => Err(Rich::custom(span, "expected value")),
        });

        let comment = any().try_map(|(tok, span): Spanned<Token>, _| match tok {
            Token::Comment(s) => Ok(PropertiesItem::Doc(s)),
            _ => Err(Rich::custom(span, "expected comment")),
        });

        let newline = any().filter(|(tok, _): &Spanned<Token>| *tok == Token::Newline);

        let entry = key
            .then_ignore(equals)
            .then(value)
            .map(|(k, v)| PropertiesItem::Entry(k, v));

        // 2+ consecutive newlines = blank line; clears pending docs.
        let blank = newline
            .clone()
            .then(newline.clone().repeated().at_least(1).collect::<Vec<_>>())
            .to(PropertiesItem::Blank);

        choice((
            blank.map(Some),
            entry.map(Some),
            comment.map(Some),
            newline.to(None),
        ))
        .repeated()
        .collect::<Vec<_>>()
        .map_with(|items, e| {
            let items: Vec<PropertiesItem> = items.into_iter().flatten().collect();
            (PropertiesExpr::File(items), e.span())
        })
    }
}
