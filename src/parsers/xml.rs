use chumsky::{error::Rich, extra::Err, prelude::*, Parser};

use crate::{GTNHParser, Ir, Spanned};
use std::collections::HashMap;

#[derive(Clone, Debug, PartialEq)]
pub enum Token {
    OpenTag,       // <
    CloseTag,      // >
    SlashClose,    // />
    OpenEndTag,    // </
    Equals,
    Str(String),      // quoted attribute value
    Name(String),     // tag/attribute name
    Text(String),     // text content between tags
    XmlDecl,          // <?xml ... ?>
    Comment(String),  // <!-- comment text -->
}

#[derive(Clone, Debug, PartialEq)]
pub enum XmlExpr {
    Element {
        tag: String,
        attrs: Vec<(String, String)>,
        children: Vec<Spanned<XmlExpr>>,
    },
    Text(String),
    Comment(String),
}

impl From<XmlExpr> for Ir {
    fn from(expr: XmlExpr) -> Self {
        xml_to_ir(expr)
    }
}

fn xml_to_ir(expr: XmlExpr) -> Ir {
    match expr {
        XmlExpr::Text(s) => infer_type(&s),
        XmlExpr::Comment(s) => Ir::Doc(s),
        XmlExpr::Element {
            tag,
            attrs,
            children,
        } => {
            let mut map = HashMap::new();

            // Add attributes with @ prefix
            for (k, v) in attrs {
                map.insert(format!("@{k}"), infer_type(&v));
            }

            // Process children, attaching doc comments to following elements
            let mut pending_doc: Vec<String> = Vec::new();
            let mut child_irs = Vec::new();

            for (child, _span) in children {
                match child {
                    XmlExpr::Comment(text) => {
                        pending_doc.push(text);
                    }
                    XmlExpr::Element { tag: ref _child_tag, .. } => {
                        if !pending_doc.is_empty() {
                            child_irs.push(Ir::Doc(pending_doc.join("\n")));
                            pending_doc.clear();
                        }
                        child_irs.push(xml_to_ir(child));
                    }
                    XmlExpr::Text(ref s) => {
                        let trimmed = s.trim();
                        if !trimmed.is_empty() {
                            if !pending_doc.is_empty() {
                                child_irs.push(Ir::Doc(pending_doc.join("\n")));
                                pending_doc.clear();
                            }
                            child_irs.push(xml_to_ir(child));
                        }
                    }
                }
            }

            Ir::Node {
                tag: Some(tag),
                attrs: if map.is_empty() { None } else { Some(map) },
                children: if child_irs.is_empty() {
                    None
                } else {
                    Some(child_irs)
                },
            }
        }
    }
}

fn infer_type(v: &str) -> Ir {
    let trimmed = v.trim();
    match trimmed {
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
    }
}

pub struct XmlParser;

impl GTNHParser for XmlParser {
    type LexerToken = Token;
    type ParserExpr = XmlExpr;

    fn lexer<'a>() -> impl Parser<'a, &'a str, Vec<Spanned<Token>>, Err<Rich<'a, char>>> {
        // XML declaration: <?xml ... ?>
        let xml_decl = just("<?")
            .then(none_of("?").repeated())
            .then(just("?>"))
            .to(Token::XmlDecl);

        // Comment: <!-- ... -->
        let xml_comment = just("<!--")
            .ignore_then(
                any()
                    .and_is(just("-->").not())
                    .repeated()
                    .collect::<String>(),
            )
            .then_ignore(just("-->"))
            .map(|s| Token::Comment(s.trim().to_string()));

        let open_end_tag = just("</").to(Token::OpenEndTag);
        let slash_close = just("/>").to(Token::SlashClose);
        let open_tag = just('<').to(Token::OpenTag);
        let close_tag = just('>').to(Token::CloseTag);
        let equals = just('=').to(Token::Equals);

        let quoted_str = just('"')
            .ignore_then(none_of("\"").repeated().collect::<String>())
            .then_ignore(just('"'))
            .or(just('\'')
                .ignore_then(none_of("'").repeated().collect::<String>())
                .then_ignore(just('\'')))
            .map(Token::Str);

        let name = one_of("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ_")
            .then(
                one_of("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789_:.-")
                    .repeated(),
            )
            .to_slice()
            .map(|s: &str| Token::Name(s.to_string()));

        // Text content: anything between > and <, must have non-whitespace
        let text_content = none_of("< \t\r\n")
            .then(none_of("<").repeated().collect::<String>())
            .to_slice()
            .map(|s: &str| Token::Text(s.trim().to_string()));

        let token = choice((
            xml_decl,
            xml_comment,
            open_end_tag,
            slash_close,
            open_tag,
            close_tag,
            equals,
            quoted_str,
            name,
            text_content,
        ));

        token
            .map_with(|tok, e| (tok, e.span()))
            .padded_by(one_of(" \t\r\n").repeated())
            .repeated()
            .collect()
    }

    fn parser<'b>(
    ) -> impl Parser<'b, &'b [Spanned<Token>], Spanned<XmlExpr>, Err<Rich<'b, Spanned<Token>>>>
    {
        recursive(|element| {
            let comment = any().try_map(|(tok, span): Spanned<Token>, _| match tok {
                Token::Comment(s) => Ok((XmlExpr::Comment(s), span)),
                _ => Err(Rich::custom(span, "expected comment")),
            });

            let skip = any()
                .filter(|(tok, _): &Spanned<Token>| matches!(tok, Token::XmlDecl));

            let name = any().try_map(|(tok, span): Spanned<Token>, _| match tok {
                Token::Name(s) => Ok(s),
                _ => Err(Rich::custom(span, "expected name")),
            });

            let str_val = any().try_map(|(tok, span): Spanned<Token>, _| match tok {
                Token::Str(s) => Ok(s),
                _ => Err(Rich::custom(span, "expected string")),
            });

            let text = any().try_map(|(tok, span): Spanned<Token>, _| match tok {
                Token::Text(s) => Ok((XmlExpr::Text(s), span)),
                Token::Name(s) => Ok((XmlExpr::Text(s), span)),
                _ => Err(Rich::custom(span, "expected text")),
            });

            let open_tag = any().filter(|(tok, _): &Spanned<Token>| *tok == Token::OpenTag);
            let close_tag = any().filter(|(tok, _): &Spanned<Token>| *tok == Token::CloseTag);
            let open_end_tag = any().filter(|(tok, _): &Spanned<Token>| *tok == Token::OpenEndTag);
            let slash_close = any().filter(|(tok, _): &Spanned<Token>| *tok == Token::SlashClose);
            let equals = any().filter(|(tok, _): &Spanned<Token>| *tok == Token::Equals);

            let attr = name.clone().then_ignore(equals).then(str_val);

            let attrs = attr.repeated().collect::<Vec<_>>();

            // Self-closing: <tag attr="val" />
            let self_closing = open_tag
                .clone()
                .ignore_then(name.clone())
                .then(attrs.clone())
                .then_ignore(slash_close)
                .map_with(|(tag, attrs), e| {
                    (
                        XmlExpr::Element {
                            tag,
                            attrs,
                            children: vec![],
                        },
                        e.span(),
                    )
                });

            // Child content: nested element, comment, or text
            let child = choice((element, comment, text));

            // Open/close: <tag attrs>children</tag>
            let full_element = open_tag
                .ignore_then(name.clone())
                .then(attrs)
                .then_ignore(close_tag)
                .then(
                    choice((child.map(Some), skip.clone().to(None)))
                        .repeated()
                        .collect::<Vec<Option<Spanned<XmlExpr>>>>()
                        .map(|items: Vec<Option<Spanned<XmlExpr>>>| {
                            items.into_iter().flatten().collect::<Vec<_>>()
                        }),
                )
                .then_ignore(open_end_tag)
                .then_ignore(name)
                .then_ignore(any().filter(|(tok, _): &Spanned<Token>| *tok == Token::CloseTag))
                .map_with(|((tag, attrs), children), e| {
                    (
                        XmlExpr::Element {
                            tag,
                            attrs,
                            children,
                        },
                        e.span(),
                    )
                });

            choice((skip.to(None), comment.map(Some)))
                .repeated()
                .collect::<Vec<Option<Spanned<XmlExpr>>>>()
                .map(|items| items.into_iter().flatten().collect::<Vec<_>>())
                .ignore_then(choice((self_closing, full_element)))
        })
    }
}
