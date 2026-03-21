use chumsky::{error::Rich, extra::Err, prelude::*, Parser};

use crate::{GTNHParser, Ir, Spanned};
use std::collections::HashMap;

#[derive(Clone, Debug, PartialEq)]
pub enum Token {
    TypePrefix(char), // B, I, D, S, F
    Colon,
    Equals,
    OpenBrace,
    CloseBrace,
    OpenAngle,        // <
    CloseAngle,       // >
    Str(String),      // quoted string
    Ident(String),    // unquoted identifier/value
    Comment(String),  // # comment text
    Newline,
}

#[derive(Clone, Debug, PartialEq)]
pub enum ForgeExpr {
    Entry {
        type_prefix: Option<char>,
        key: String,
        value: String,
    },
    List {
        type_prefix: Option<char>,
        key: String,
        values: Vec<String>,
    },
    Section {
        name: String,
        children: Vec<Spanned<ForgeExpr>>,
    },
    Doc(String),
    File(Vec<Spanned<ForgeExpr>>),
}

impl From<ForgeExpr> for Ir {
    fn from(expr: ForgeExpr) -> Self {
        forge_expr_to_ir(expr)
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
            ForgeExpr::Entry {
                key,
                type_prefix,
                value,
                ..
            } => {
                if !pending_doc.is_empty() {
                    attrs.insert(
                        format!("{key}.__doc__"),
                        Ir::Doc(pending_doc.join("\n")),
                    );
                    pending_doc.clear();
                }
                attrs.insert(key, infer_typed_value(type_prefix, &value));
            }
            ForgeExpr::List { key, values, .. } => {
                if !pending_doc.is_empty() {
                    attrs.insert(
                        format!("{key}.__doc__"),
                        Ir::Doc(pending_doc.join("\n")),
                    );
                    pending_doc.clear();
                }
                attrs.insert(
                    key,
                    Ir::Node {
                        tag: None,
                        attrs: None,
                        children: Some(values.into_iter().map(Ir::Str).collect()),
                    },
                );
            }
            ForgeExpr::Section { name, children } => {
                if !pending_doc.is_empty() {
                    attrs.insert(
                        format!("{name}.__doc__"),
                        Ir::Doc(pending_doc.join("\n")),
                    );
                    pending_doc.clear();
                }
                attrs.insert(
                    name.clone(),
                    forge_expr_to_ir(ForgeExpr::Section { name, children }),
                );
            }
            ForgeExpr::File(_) => {}
        }
    }
    attrs
}

fn forge_expr_to_ir(expr: ForgeExpr) -> Ir {
    match expr {
        ForgeExpr::Entry {
            type_prefix,
            key: _,
            value,
        } => infer_typed_value(type_prefix, &value),
        ForgeExpr::List { values, .. } => Ir::Node {
            tag: None,
            attrs: None,
            children: Some(values.into_iter().map(Ir::Str).collect()),
        },
        ForgeExpr::Section { name: _, children } => Ir::Node {
            tag: None,
            attrs: Some(forge_children_to_attrs(children)),
            children: None,
        },
        ForgeExpr::File(children) => Ir::Node {
            tag: None,
            attrs: Some(forge_children_to_attrs(children)),
            children: None,
        },
        ForgeExpr::Doc(_) => Ir::Null, // standalone doc, shouldn't happen at top level
    }
}

fn infer_typed_value(type_prefix: Option<char>, value: &str) -> Ir {
    let trimmed = value.trim();
    match type_prefix {
        Some('B') => match trimmed.to_lowercase().as_str() {
            "true" => Ir::Bool(true),
            "false" => Ir::Bool(false),
            _ => Ir::Str(trimmed.to_string()),
        },
        Some('I') => trimmed
            .parse::<i32>()
            .map(Ir::Int)
            .unwrap_or(Ir::Str(trimmed.to_string())),
        Some('D') | Some('F') => trimmed
            .parse::<f32>()
            .map(Ir::Real)
            .unwrap_or(Ir::Str(trimmed.to_string())),
        Some('S') | None => match trimmed {
            "true" => Ir::Bool(true),
            "false" => Ir::Bool(false),
            _ => {
                if let Ok(i) = trimmed.parse::<i32>() {
                    Ir::Int(i)
                } else if let Ok(f) = trimmed.parse::<f32>() {
                    Ir::Real(f)
                } else {
                    Ir::Str(trimmed.to_string())
                }
            }
        },
        Some(_) => Ir::Str(trimmed.to_string()),
    }
}

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
        let equals = just('=').to(Token::Equals);
        let open_brace = just('{').to(Token::OpenBrace);
        let close_brace = just('}').to(Token::CloseBrace);
        let open_angle = just('<').to(Token::OpenAngle);
        let close_angle = just('>').to(Token::CloseAngle);

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
            equals,
            open_brace,
            close_brace,
            open_angle,
            close_angle,
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
            let equals = any().filter(|(tok, _): &Spanned<Token>| *tok == Token::Equals);
            let open_brace = any().filter(|(tok, _): &Spanned<Token>| *tok == Token::OpenBrace);
            let close_brace = any().filter(|(tok, _): &Spanned<Token>| *tok == Token::CloseBrace);
            let open_angle = any().filter(|(tok, _): &Spanned<Token>| *tok == Token::OpenAngle);
            let close_angle = any().filter(|(tok, _): &Spanned<Token>| *tok == Token::CloseAngle);

            let key_name = any().try_map(|(tok, span): Spanned<Token>, _| match tok {
                Token::Str(s) => Ok(s),
                Token::Ident(s) => Ok(s),
                _ => Err(Rich::custom(span, "expected key name")),
            });

            let value_token = any().try_map(|(tok, span): Spanned<Token>, _| match tok {
                Token::Str(s) | Token::Ident(s) => Ok(s),
                _ => Err(Rich::custom(span, "expected value")),
            });

            let list_value = any().try_map(|(tok, span): Spanned<Token>, _| match tok {
                Token::Str(s) | Token::Ident(s) => Ok(s),
                _ => Err(Rich::custom(span, "expected list value")),
            });

            let list_values = choice((list_value.map(Some), skip.clone().to(None)))
                .repeated()
                .collect::<Vec<_>>()
                .map(|items| items.into_iter().flatten().collect::<Vec<_>>());

            let typed_entry = type_prefix
                .then_ignore(colon.clone())
                .then(key_name.clone())
                .then_ignore(equals.clone())
                .then(value_token.clone())
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
                .then(
                    list_values
                        .clone()
                        .delimited_by(open_angle.clone(), close_angle.clone()),
                )
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
                .then_ignore(equals)
                .then(value_token)
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

            let untyped_list = key_name
                .clone()
                .then(list_values.delimited_by(open_angle, close_angle))
                .map_with(|(key, values), e| {
                    (
                        ForgeExpr::List {
                            type_prefix: None,
                            key,
                            values,
                        },
                        e.span(),
                    )
                });

            let section = key_name
                .then(
                    skip.clone()
                        .repeated()
                        .ignore_then(items.delimited_by(open_brace, close_brace)),
                )
                .map_with(|(name, children), e| (ForgeExpr::Section { name, children }, e.span()));

            let item = choice((
                typed_list,
                typed_entry,
                section,
                untyped_list,
                untyped_entry,
            ));

            choice((item.map(Some), comment.map(Some), newline.to(None)))
                .repeated()
                .collect::<Vec<_>>()
                .map(|items| items.into_iter().flatten().collect::<Vec<_>>())
        })
        .map_with(|children, e| (ForgeExpr::File(children), e.span()))
    }
}
