use chumsky::{error::Rich, extra::Err, prelude::*, text, Parser};

use crate::{GTNHParser, Ir, Spanned};

#[derive(Clone, Debug, PartialEq)]
pub enum Token {
    Null,
    Bool(bool),
    Int(i32),
    Real(f32),
    Str(String),
    OpenBrace,
    CloseBrace,
    OpenBracket,
    CloseBracket,
    Comma,
    Colon,
}

#[derive(Clone, Debug, PartialEq)]
pub enum JsonExpr {
    Null,
    Bool(bool),
    Int(i32),
    Real(f32),
    Str(String),
    Arr(Vec<Spanned<Self>>),
    Object(Vec<(String, Spanned<Self>)>),
}

impl From<JsonExpr> for Ir {
    fn from(expr: JsonExpr) -> Self {
        match expr {
            JsonExpr::Null => Ir::Null,
            JsonExpr::Bool(b) => Ir::Bool(b),
            JsonExpr::Int(n) => Ir::Int(n),
            JsonExpr::Real(f) => Ir::Real(f),
            JsonExpr::Str(s) => Ir::Str(s),
            JsonExpr::Arr(items) => Ir::Node {
                children: Some(items.into_iter().map(|(e, _)| e.into()).collect()),
                attrs: None,
                tag: None,
            },
            JsonExpr::Object(fields) => Ir::Node {
                tag: None,
                attrs: Some(
                    fields
                        .into_iter()
                        .map(|(k, (v, _))| (k, v.into()))
                        .collect(),
                ),
                children: None,
            },
        }
    }
}

pub struct JsonParser;

impl GTNHParser for JsonParser {
    type LexerToken = Token;
    type ParserExpr = JsonExpr;

    fn lexer<'a>() -> impl Parser<'a, &'a str, Vec<Spanned<Token>>, Err<Rich<'a, char>>> {
        let string = just('"')
            .ignore_then(
                none_of("\"\\")
                    .or(just('\\').ignore_then(choice((
                        just('"').to('"'),
                        just('\\').to('\\'),
                        just('/').to('/'),
                        just('b').to('\u{08}'),
                        just('f').to('\u{0C}'),
                        just('n').to('\n'),
                        just('r').to('\r'),
                        just('t').to('\t'),
                        just('u').ignore_then(
                            any()
                                .filter(|c: &char| c.is_ascii_hexdigit())
                                .repeated()
                                .exactly(4)
                                .collect::<String>()
                                .map(|s| {
                                    let n = u32::from_str_radix(&s, 16).unwrap();
                                    char::from_u32(n).unwrap_or('\u{FFFD}')
                                }),
                        ),
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

        let keyword = text::keyword("null")
            .to(Token::Null)
            .or(text::keyword("true").to(Token::Bool(true)))
            .or(text::keyword("false").to(Token::Bool(false)));

        let punct = choice((
            just('{').to(Token::OpenBrace),
            just('}').to(Token::CloseBrace),
            just('[').to(Token::OpenBracket),
            just(']').to(Token::CloseBracket),
            just(',').to(Token::Comma),
            just(':').to(Token::Colon),
        ));

        let token = choice((string, number, keyword, punct));

        token
            .map_with(|tok, e| (tok, e.span()))
            .padded()
            .repeated()
            .collect()
    }

    fn parser<'b>(
    ) -> impl Parser<'b, &'b [Spanned<Token>], Spanned<JsonExpr>, Err<Rich<'b, Spanned<Token>>>>
    {
        recursive(|value| {
            let atom = any().try_map(|(tok, span): Spanned<Token>, _| match tok {
                Token::Null => Ok((JsonExpr::Null, span)),
                Token::Bool(b) => Ok((JsonExpr::Bool(b), span)),
                Token::Int(n) => Ok((JsonExpr::Int(n), span)),
                Token::Real(f) => Ok((JsonExpr::Real(f), span)),
                Token::Str(s) => Ok((JsonExpr::Str(s), span)),
                _ => Err(Rich::custom(span, "expected a value")),
            });

            let comma = any().filter(|(tok, _): &Spanned<Token>| *tok == Token::Comma);
            let colon = any().filter(|(tok, _): &Spanned<Token>| *tok == Token::Colon);
            let open_bracket = any().filter(|(tok, _): &Spanned<Token>| *tok == Token::OpenBracket);
            let close_bracket =
                any().filter(|(tok, _): &Spanned<Token>| *tok == Token::CloseBracket);
            let open_brace = any().filter(|(tok, _): &Spanned<Token>| *tok == Token::OpenBrace);
            let close_brace = any().filter(|(tok, _): &Spanned<Token>| *tok == Token::CloseBrace);

            let array = value
                .clone()
                .separated_by(comma.clone())
                .allow_trailing()
                .collect::<Vec<_>>()
                .delimited_by(open_bracket, close_bracket)
                .map_with(|items, e| (JsonExpr::Arr(items), e.span()));

            let key = any().try_map(|(tok, span): Spanned<Token>, _| match tok {
                Token::Str(s) => Ok(s),
                _ => Err(Rich::custom(span, "expected a string key")),
            });

            let member = key.then_ignore(colon).then(value);

            let object = member
                .separated_by(comma)
                .allow_trailing()
                .collect::<Vec<_>>()
                .delimited_by(open_brace, close_brace)
                .map_with(|fields, e| (JsonExpr::Object(fields), e.span()));

            choice((atom, array, object))
        })
    }
}
