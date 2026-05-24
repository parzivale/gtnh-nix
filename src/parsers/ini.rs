use chumsky::{error::Rich, extra::Err, prelude::*, Parser};

use crate::{GTNHParser, Ir, Spanned};
use std::collections::HashMap;

#[derive(Clone, Debug, PartialEq)]
pub enum Token {
    SectionHeader(String),
    Key(String),
    Equals,
    Value(String),
    Comment(String),
    Newline,
}

#[derive(Clone, Debug, PartialEq)]
pub enum IniItem {
    Entry(String, String),
    Doc(String),
    Blank,
}

#[derive(Clone, Debug, PartialEq)]
pub enum IniExpr {
    File {
        sections: Vec<(String, Vec<IniItem>)>,
    },
}

impl From<IniExpr> for Ir {
    fn from(expr: IniExpr) -> Self {
        match expr {
            IniExpr::File { sections } => Ir::Node {
                tag: None,
                attrs: Some(
                    sections
                        .into_iter()
                        .map(|(name, items)| {
                            let mut attrs = HashMap::new();
                            let mut pending_doc: Vec<String> = Vec::new();

                            for item in items {
                                match item {
                                    IniItem::Doc(text) => pending_doc.push(text),
                                    IniItem::Blank => pending_doc.clear(),
                                    IniItem::Entry(k, v) => {
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

                            let section_ir = Ir::Node {
                                tag: None,
                                attrs: Some(attrs),
                                children: None,
                            };
                            (name, section_ir)
                        })
                        .collect(),
                ),
                children: None,
            },
        }
    }
}

fn infer_type(v: &str) -> Ir {
    let trimmed = v.trim();
    match trimmed.to_lowercase().as_str() {
        "true" | "yes" | "on" => Ir::Bool(true),
        "false" | "no" | "off" => Ir::Bool(false),
        _ => crate::parse_number(trimmed),
    }
}

pub struct IniParser;

impl GTNHParser for IniParser {
    type LexerToken = Token;
    type ParserExpr = IniExpr;

    fn lexer<'a>() -> impl Parser<'a, &'a str, Vec<Spanned<Token>>, Err<Rich<'a, char>>> {
        // Match CRLF (`\r\n`) and LF, tolerating stray CRs (`\r\r\n` shows
        // up in older GTNH IC2.ini files).
        let newline = just('\r').repeated().then(just('\n')).to(Token::Newline);

        let comment = one_of(";#")
            .ignore_then(none_of("\r\n").repeated().collect::<String>())
            .map(|s| Token::Comment(s.trim().to_string()));

        let section_header = just('[')
            .ignore_then(none_of("]\r\n").repeated().collect::<String>())
            .then_ignore(just(']'))
            .map(|s| Token::SectionHeader(s.trim().to_string()));

        let key = none_of("=\r\n[;#")
            .repeated()
            .at_least(1)
            .collect::<String>()
            .map(|s| Token::Key(s.trim().to_string()));

        let equals = just('=').to(Token::Equals);

        let value = none_of("\r\n")
            .repeated()
            .collect::<String>()
            .map(|s| Token::Value(s.trim().to_string()));

        let entry = key
            .map_with(|tok, e| (tok, e.span()))
            .then(equals.map_with(|tok, e| (tok, e.span())))
            .then(value.map_with(|tok, e| (tok, e.span())))
            .map(|((k, eq), v)| vec![k, eq, v]);

        let section_line = section_header.map_with(|tok, e| vec![(tok, e.span())]);
        let comment_line = comment.map_with(|tok, e| vec![(tok, e.span())]);
        let newline_tok = newline.map_with(|tok, e| vec![(tok, e.span())]);

        let line = choice((section_line, entry, comment_line, newline_tok));

        line.repeated()
            .collect::<Vec<Vec<_>>>()
            .map(|lines| lines.into_iter().flatten().collect())
    }

    fn parser<'b>(
    ) -> impl Parser<'b, &'b [Spanned<Token>], Spanned<IniExpr>, Err<Rich<'b, Spanned<Token>>>> {
        let section_header = any().try_map(|(tok, span): Spanned<Token>, _| match tok {
            Token::SectionHeader(s) => Ok(s),
            _ => Err(Rich::custom(span, "expected section header")),
        });

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
            Token::Comment(s) => Ok(IniItem::Doc(s)),
            _ => Err(Rich::custom(span, "expected comment")),
        });

        let newline = any().filter(|(tok, _): &Spanned<Token>| *tok == Token::Newline);

        let entry = key
            .then_ignore(equals)
            .then(value)
            .map(|(k, v)| IniItem::Entry(k, v));

        // 2+ consecutive newlines = blank line; clears pending docs.
        let blank = newline
            .clone()
            .then(newline.clone().repeated().at_least(1).collect::<Vec<_>>())
            .to(IniItem::Blank);

        let item = choice((
            blank.map(Some),
            entry.map(Some),
            comment.map(Some),
            newline.to(None),
        ));

        let items = item
            .repeated()
            .collect::<Vec<_>>()
            .map(|items| items.into_iter().flatten().collect::<Vec<_>>());

        let section = section_header.then(items.clone());

        // Optional default section (entries before any header)
        items
            .then(section.repeated().collect::<Vec<_>>())
            .map_with(|(default_items, sections), e| {
                let mut all_sections = Vec::new();
                if !default_items.is_empty() {
                    all_sections.push(("default".to_string(), default_items));
                }
                all_sections.extend(sections);
                (IniExpr::File { sections: all_sections }, e.span())
            })
    }
}
