use chumsky::{error::Rich, extra::Err, prelude::*, text, Parser};

use crate::{GTNHParser, Ir, Spanned};
use std::collections::HashMap;

#[derive(Clone, Debug, PartialEq)]
pub enum Token {
    Bool(bool),
    Int(i32),
    Real(f32),
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
    Int(i32),
    Real(f32),
    Str(String),
    Arr(Vec<Spanned<Self>>),
    Object(Vec<HoconItem>),
}

#[derive(Clone, Debug, PartialEq)]
pub enum HoconItem {
    Member(String, Spanned<HoconExpr>),
    Doc(String),
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
                eprintln!("HOCON items: {items:?}");
                for item in items {
                    match item {
                        HoconItem::Doc(text) => pending_doc.push(text),
                        HoconItem::Member(k, (v, _)) => {
                            if !pending_doc.is_empty() {
                                attrs.insert(
                                    format!("{k}.__doc__"),
                                    Ir::Doc(pending_doc.join("\n")),
                                );
                                pending_doc.clear();
                            }
                            attrs.insert(k, v.into());
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

        let number = just('-')
            .or_not()
            .then(text::int(10))
            .then(just('.').then(text::digits(10)).or_not())
            .to_slice()
            .map(|s: &str| {
                if s.contains('.') {
                    Token::Real(s.parse().unwrap())
                } else {
                    Token::Int(s.parse().unwrap())
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
        recursive(|value| {
            let comment_text = any()
                .filter(|(tok, _): &Spanned<Token>| matches!(tok, Token::Comment(_)))
                .map(|(tok, _)| match tok {
                    Token::Comment(s) => s,
                    _ => unreachable!(),
                });
            let skip = any().filter(|(tok, _): &Spanned<Token>| {
                matches!(tok, Token::Comment(_) | Token::Newline)
            });
            let newline = any().filter(|(tok, _): &Spanned<Token>| *tok == Token::Newline);
            let skip_many = skip.clone().repeated();

            let atom = any().try_map(|(tok, span): Spanned<Token>, _| match tok {
                Token::Bool(b) => Ok((HoconExpr::Bool(b), span)),
                Token::Int(n) => Ok((HoconExpr::Int(n), span)),
                Token::Real(f) => Ok((HoconExpr::Real(f), span)),
                Token::Str(s) => Ok((HoconExpr::Str(s), span)),
                Token::Ident(s) => Ok((HoconExpr::Str(s), span)),
                _ => Err(Rich::custom(span, "expected a value")),
            });

            let comma = any().filter(|(tok, _): &Spanned<Token>| *tok == Token::Comma);
            let equals = any().filter(|(tok, _): &Spanned<Token>| *tok == Token::Equals);
            let open_brace = any().filter(|(tok, _): &Spanned<Token>| *tok == Token::OpenBrace);
            let close_brace = any().filter(|(tok, _): &Spanned<Token>| *tok == Token::CloseBrace);
            let open_bracket = any().filter(|(tok, _): &Spanned<Token>| *tok == Token::OpenBracket);
            let close_bracket =
                any().filter(|(tok, _): &Spanned<Token>| *tok == Token::CloseBracket);

            let array = value
                .clone()
                .separated_by(choice((comma.clone(), skip.clone())))
                .allow_trailing()
                .collect::<Vec<_>>()
                .delimited_by(
                    open_bracket.then(skip_many.clone()),
                    skip_many.clone().then(close_bracket),
                )
                .map_with(|items, e| (HoconExpr::Arr(items), e.span()));

            let key = any()
                .filter(|(tok, _): &Spanned<Token>| matches!(tok, Token::Str(_) | Token::Ident(_)))
                .map(|(tok, _)| match tok {
                    Token::Str(s) | Token::Ident(s) => s,
                    _ => unreachable!(),
                });

            // key = value  OR  key { object }
            let nl_repeated = newline.clone().repeated();
            let member = key
                .then_ignore(nl_repeated.clone())
                .then(choice((
                    equals.ignore_then(nl_repeated.clone()).ignore_then(value.clone()),
                    value.clone().filter(|(expr, _)| matches!(expr, HoconExpr::Object(_))),
                )))
                .map(|(key, val)| HoconItem::Member(key, val));

            let doc_item = comment_text.map(|s| { eprintln!("DOC_ITEM matched: {s}"); HoconItem::Doc(s) });

            let sep = choice((comma.clone(), newline.clone().map(|t| { eprintln!("SEP consumed newline"); t })));

            let nl_many = newline.clone().repeated();

            let object = open_brace
                .ignore_then(
                    choice((
                        doc_item.map(|d| { eprintln!("  chose: doc"); Some(d) }),
                        member.clone().map(|m| { eprintln!("  chose: member {:?}", match &m { HoconItem::Member(k,_) => k.clone(), _ => "?".into() }); Some(m) }),
                        sep.map(|_| { eprintln!("  chose: sep"); None }),
                    ))
                    .repeated()
                    .collect::<Vec<_>>()
                    .map(|items| items.into_iter().flatten().collect::<Vec<_>>()),
                )
                .then_ignore(close_brace)
                .map_with(|items, e| (HoconExpr::Object(items), e.span()));

            let nl_skip = newline.clone().repeated();
            nl_skip
                .clone()
                .ignore_then(choice((array, object, atom)))
                .then_ignore(nl_skip)
        })
    }
}
