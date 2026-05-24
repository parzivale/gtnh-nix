use chumsky::{error::Rich, extra::Err, prelude::*, text, Parser};

use crate::{GTNHParser, Ir, Spanned};
use std::collections::HashMap;

#[derive(Clone, Debug, PartialEq)]
pub enum Token {
    Bool(bool),
    Int(i64),
    Real(f64),
    Str(String),      // quoted string
    Ident(String),    // unquoted identifier
    OpenBrace,
    CloseBrace,
    OpenBracket,
    CloseBracket,
    Equals, // = or :
    Comma,
    Comment(String),
    Newline,
}

#[derive(Clone, Debug, PartialEq)]
pub enum HoconExpr {
    Bool(bool),
    Int(i64),
    Real(f64),
    Str(String),
    Arr(Vec<Spanned<Self>>),
    Object(Vec<HoconItem>),
}

#[derive(Clone, Debug, PartialEq)]
pub enum HoconItem {
    Member(String, Spanned<HoconExpr>),
    Doc(String),
    Blank,
}

impl From<HoconExpr> for Ir {
    fn from(expr: HoconExpr) -> Self {
        match expr {
            HoconExpr::Bool(b) => Ir::Bool(b),
            HoconExpr::Int(n) => Ir::Int(n),
            HoconExpr::Real(f) => Ir::Real(f),
            HoconExpr::Str(s) => Ir::Str(s),
            HoconExpr::Arr(items) => Ir::Node {
                tag: None,
                attrs: None,
                children: Some(items.into_iter().map(|(e, _)| e.into()).collect()),
            },
            HoconExpr::Object(items) => {
                let mut attrs = HashMap::new();
                let mut pending_doc: Vec<String> = Vec::new();
                for item in items {
                    match item {
                        HoconItem::Doc(text) => pending_doc.push(text),
                        HoconItem::Blank => pending_doc.clear(),
                        HoconItem::Member(k, (v, _)) => {
                            let value: Ir = v.into();
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

pub struct HoconParser;

impl GTNHParser for HoconParser {
    type LexerToken = Token;
    type ParserExpr = HoconExpr;

    fn lexer<'a>() -> impl Parser<'a, &'a str, Vec<Spanned<Token>>, Err<Rich<'a, char>>> {
        let newline = just('\n').to(Token::Newline);

        // # comments and // comments
        let comment = just('#')
            .or(just('/').then_ignore(just('/')).to('#'))
            .ignore_then(none_of("\n").repeated().collect::<String>())
            .map(|s| Token::Comment(s.trim().to_string()));

        let quoted_string = just('"')
            .ignore_then(
                none_of("\"\\")
                    .or(just('\\').ignore_then(choice((
                        just('"').to('"'),
                        just('\\').to('\\'),
                        just('/').to('/'),
                        just('n').to('\n'),
                        just('r').to('\r'),
                        just('t').to('\t'),
                    ))))
                    .repeated()
                    .collect::<String>(),
            )
            .then_ignore(just('"'))
            .map(Token::Str);

        let exponent = one_of("eE")
            .then(one_of("+-").or_not())
            .then(text::digits(10));
        let number = just('-')
            .or_not()
            .then(text::int(10))
            .then(just('.').then(text::digits(10)).or_not())
            .then(exponent.or_not())
            .to_slice()
            .map(|s: &str| {
                let is_real = s.contains('.') || s.contains('e') || s.contains('E');
                if is_real {
                    s.parse::<f64>()
                        .map(Token::Real)
                        .unwrap_or_else(|_| Token::Str(s.to_string()))
                } else {
                    s.parse::<i64>()
                        .map(Token::Int)
                        .unwrap_or_else(|_| Token::Str(s.to_string()))
                }
            });

        let keyword = text::keyword("true")
            .to(Token::Bool(true))
            .or(text::keyword("false").to(Token::Bool(false)));

        let punct = choice((
            just('{').to(Token::OpenBrace),
            just('}').to(Token::CloseBrace),
            just('[').to(Token::OpenBracket),
            just(']').to(Token::CloseBracket),
            one_of("=:").to(Token::Equals),
            just(',').to(Token::Comma),
        ));

        let ident = one_of("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ_")
            .then(
                one_of("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789_-.")
                    .repeated(),
            )
            .to_slice()
            .map(|s: &str| Token::Ident(s.to_string()));

        let token = choice((comment, newline, quoted_string, number, keyword, punct, ident));

        token
            .map_with(|tok, e| (tok, e.span()))
            .padded_by(one_of(" \t\r").repeated())
            .repeated()
            .collect()
    }

    fn parser<'b>(
    ) -> impl Parser<'b, &'b [Spanned<Token>], Spanned<HoconExpr>, Err<Rich<'b, Spanned<Token>>>>
    {
        // The recursive `value` is exactly `array | object | atom`. Braceless
        // is excluded here so a `key = unifont` member can't accidentally
        // absorb subsequent sibling members as nested object content. The
        // top-level wrapper at the bottom adds braceless as a fallback.
        let value = recursive(|value| {
            let comment_text = any().try_map(|(tok, span): Spanned<Token>, _| match tok {
                Token::Comment(s) => Ok(s),
                _ => Err(Rich::custom(span, "expected comment")),
            });
            let skip = any().filter(|(tok, _): &Spanned<Token>| {
                matches!(tok, Token::Comment(_) | Token::Newline)
            });
            let newline = any().filter(|(tok, _): &Spanned<Token>| *tok == Token::Newline);
            let _skip_many = skip.clone().repeated();

            let atom = any().try_map(|(tok, span): Spanned<Token>, _| match tok {
                Token::Bool(b) => Ok((HoconExpr::Bool(b), span)),
                Token::Int(n) => Ok((HoconExpr::Int(n), span)),
                Token::Real(f) => Ok((HoconExpr::Real(f), span)),
                Token::Str(s) | Token::Ident(s) => Ok((HoconExpr::Str(s), span)),
                _ => Err(Rich::custom(span, "expected a value")),
            });

            let comma = any().filter(|(tok, _): &Spanned<Token>| *tok == Token::Comma);
            let equals = any().filter(|(tok, _): &Spanned<Token>| *tok == Token::Equals);
            let open_brace = any().filter(|(tok, _): &Spanned<Token>| *tok == Token::OpenBrace);
            let close_brace = any().filter(|(tok, _): &Spanned<Token>| *tok == Token::CloseBrace);
            let open_bracket = any().filter(|(tok, _): &Spanned<Token>| *tok == Token::OpenBracket);
            let close_bracket =
                any().filter(|(tok, _): &Spanned<Token>| *tok == Token::CloseBracket);

            // Arrays accept items separated by commas, newlines, or both.
            // We use a `repeated` items loop (rather than `separated_by`)
            // because `value` already consumes trailing newlines — a
            // `separated_by` separator would then fail to match between
            // newline-only-separated items (which lib.nix's HOCON renderer
            // emits).
            let array_item = choice((
                value.clone().map(Some),
                skip.clone().to(None),
                comma.clone().to(None),
            ));
            let array = array_item
                .repeated()
                .collect::<Vec<_>>()
                .delimited_by(open_bracket, close_bracket)
                .map_with(|items: Vec<Option<Spanned<HoconExpr>>>, e| {
                    let items: Vec<Spanned<HoconExpr>> =
                        items.into_iter().flatten().collect();
                    (HoconExpr::Arr(items), e.span())
                });

            let key = any().try_map(|(tok, span): Spanned<Token>, _| match tok {
                Token::Str(s) | Token::Ident(s) => Ok(s),
                _ => Err(Rich::custom(span, "expected key")),
            });

            // key = value  OR  key { object }
            // After `=`, the value may be empty (followed immediately by a
            // newline) — common in forestry/*.conf files like
            // `beekeeping.flowers.custom=`. We try empty_value before value
            // so the newline terminating the line wins over braceless's
            // appetite for following members.
            let nl_repeated = newline.clone().repeated();
            let empty_value = newline
                .clone()
                .rewind()
                .map_with(|_, e| (HoconExpr::Str(String::new()), e.span()));
            let member = key
                .then_ignore(nl_repeated.clone())
                .then(choice((
                    equals.ignore_then(choice((empty_value, value.clone()))),
                    value.clone().filter(|(expr, _)| matches!(expr, HoconExpr::Object(_))),
                )))
                .map(|(key, val)| HoconItem::Member(key, val));

            let doc_item = comment_text.map(HoconItem::Doc);

            // Two or more consecutive newlines = blank line; clears pending docs.
            let blank = newline
                .clone()
                .then(newline.clone().repeated().at_least(1).collect::<Vec<_>>())
                .to(HoconItem::Blank);

            let sep = choice((comma.clone(), newline.clone()));

            // Items inside an object (or at top-level for braceless).
            let items = choice((
                blank.map(Some),
                doc_item.map(Some),
                member.clone().map(Some),
                sep.to(None),
            ))
            .repeated()
            .collect::<Vec<_>>()
            .map(|items| items.into_iter().flatten().collect::<Vec<_>>());

            let object = items
                .delimited_by(open_brace, close_brace)
                .map_with(|items, e| (HoconExpr::Object(items), e.span()));

            let nl_skip = newline.clone().repeated();
            // Recursive value: array/object/atom. NO braceless.
            nl_skip
                .clone()
                .ignore_then(choice((array, object, atom)))
                .then_ignore(nl_skip)
        });

        // Top-level wrapper: try the recursive value first; if no top-level
        // value matches, fall back to braceless (file-level bare members).
        let braceless = {
            let comment_text = any().try_map(|(tok, span): Spanned<Token>, _| match tok {
                Token::Comment(s) => Ok(s),
                _ => Err(Rich::custom(span, "expected comment")),
            });
            let newline = any().filter(|(tok, _): &Spanned<Token>| *tok == Token::Newline);
            let comma = any().filter(|(tok, _): &Spanned<Token>| *tok == Token::Comma);
            let equals = any().filter(|(tok, _): &Spanned<Token>| *tok == Token::Equals);
            let key = any().try_map(|(tok, span): Spanned<Token>, _| match tok {
                Token::Str(s) | Token::Ident(s) => Ok(s),
                _ => Err(Rich::custom(span, "expected key")),
            });

            let nl_repeated = newline.clone().repeated();
            let empty_value = newline
                .clone()
                .rewind()
                .map_with(|_, e| (HoconExpr::Str(String::new()), e.span()));
            let member = key
                .then_ignore(nl_repeated.clone())
                .then(choice((
                    equals.ignore_then(choice((empty_value, value.clone()))),
                    value
                        .clone()
                        .filter(|(expr, _)| matches!(expr, HoconExpr::Object(_))),
                )))
                .map(|(key, val)| HoconItem::Member(key, val));

            let doc_item = comment_text.map(HoconItem::Doc);
            let blank = newline
                .clone()
                .then(newline.clone().repeated().at_least(1).collect::<Vec<_>>())
                .to(HoconItem::Blank);
            let sep = choice((comma, newline.clone()));

            choice((
                blank.map(Some),
                doc_item.map(Some),
                member.map(Some),
                sep.to(None),
            ))
            .repeated()
            .at_least(1)
            .collect::<Vec<_>>()
            .try_map_with(|items, e| {
                let items: Vec<HoconItem> = items.into_iter().flatten().collect();
                if items.is_empty() {
                    Err(Rich::custom(e.span(), "expected at least one member"))
                } else {
                    Ok((HoconExpr::Object(items), e.span()))
                }
            })
        };

        // Try braceless first (requires at least one member). If the input
        // isn't shaped like a braceless object, fall through to the recursive
        // value (array / object / atom).
        choice((braceless, value))
    }
}
