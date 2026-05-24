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
        // Standalone comments should not appear at this level; they're consumed
        // by the surrounding element's child loop and attached to the next child.
        XmlExpr::Comment(_) => Ir::Null,
        XmlExpr::Element {
            tag,
            attrs,
            children,
        } => {
            let mut map = HashMap::new();

            for (k, v) in attrs {
                map.insert(format!("@{k}"), infer_type(&v));
            }

            let mut pending_doc: Vec<String> = Vec::new();
            let mut child_irs = Vec::new();

            for (child, _span) in children {
                match child {
                    XmlExpr::Comment(text) => {
                        pending_doc.push(text);
                    }
                    XmlExpr::Element { .. } => {
                        let doc = if pending_doc.is_empty() {
                            None
                        } else {
                            Some(std::mem::take(&mut pending_doc).join("\n"))
                        };
                        child_irs.push(xml_to_ir(child).with_doc(doc));
                    }
                    XmlExpr::Text(ref s) => {
                        if s.trim().is_empty() {
                            continue;
                        }
                        let doc = if pending_doc.is_empty() {
                            None
                        } else {
                            Some(std::mem::take(&mut pending_doc).join("\n"))
                        };
                        child_irs.push(xml_to_ir(child).with_doc(doc));
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

/// Decode XML entity references in attribute values and text content. This
/// matches what `xml.etree.ElementTree` does on the Python side so the IR is
/// the same as the Python AST and strings round-trip back to source form
/// after re-escaping in `mkConfigFile`.
fn decode_entities(s: &str) -> String {
    if !s.contains('&') {
        return s.to_string();
    }
    let mut out = String::with_capacity(s.len());
    let mut rest = s;
    while let Some(amp_idx) = rest.find('&') {
        out.push_str(&rest[..amp_idx]);
        let after = &rest[amp_idx + 1..];
        let Some(semi_off) = after.find(';') else {
            // Unterminated entity — keep the `&` literal and continue.
            out.push('&');
            rest = after;
            continue;
        };
        let entity = &after[..semi_off];
        let decoded = match entity {
            "amp" => Some('&'),
            "lt" => Some('<'),
            "gt" => Some('>'),
            "quot" => Some('"'),
            "apos" => Some('\''),
            _ => {
                if let Some(hex) = entity.strip_prefix("#x").or_else(|| entity.strip_prefix("#X")) {
                    u32::from_str_radix(hex, 16).ok().and_then(char::from_u32)
                } else if let Some(dec) = entity.strip_prefix('#') {
                    dec.parse::<u32>().ok().and_then(char::from_u32)
                } else {
                    None
                }
            }
        };
        match decoded {
            Some(c) => {
                out.push(c);
                rest = &after[semi_off + 1..];
            }
            None => {
                out.push('&');
                rest = after;
            }
        }
    }
    out.push_str(rest);
    out
}

fn infer_type(v: &str) -> Ir {
    let trimmed = v.trim();
    match trimmed {
        "true" => Ir::Bool(true),
        "false" => Ir::Bool(false),
        _ => crate::parse_number(trimmed),
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
            .map(|s: String| Token::Str(decode_entities(&s)));

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
            .map(|s: &str| Token::Text(decode_entities(s.trim())));

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
        let top_skip = any().filter(|(tok, _): &Spanned<Token>| {
            matches!(tok, Token::XmlDecl | Token::Comment(_))
        });

        let element = recursive(|element| {
            let comment = any().try_map(|(tok, span): Spanned<Token>, _| match tok {
                Token::Comment(s) => Ok((XmlExpr::Comment(s), span)),
                _ => Err(Rich::custom(span, "expected comment")),
            });

            let name = any().try_map(|(tok, span): Spanned<Token>, _| match tok {
                Token::Name(s) => Ok(s),
                _ => Err(Rich::custom(span, "expected name")),
            });

            let str_val = any().try_map(|(tok, span): Spanned<Token>, _| match tok {
                Token::Str(s) => Ok(s),
                _ => Err(Rich::custom(span, "expected string")),
            });

            // Element text content can span multiple lexer tokens because
            // `name` greedily eats identifier-shaped fragments inside text
            // runs (e.g. `<str>Minecraft Year {darkaqua}</str>` lexes as
            // Name("Minecraft"), Name("Year"), Text("{darkaqua}")). Collapse
            // a run of adjacent Name/Text tokens into a single Text node.
            //
            // We use the source span on each fragment to detect whitespace
            // gaps: if `prev_end < this.start`, the lexer's `padded_by` ate
            // whitespace between them and we re-insert a single space.
            // Adjacent fragments (no gap) — e.g. `Name("textures") + Text(
            // "/items/slimeball.png")` — are joined directly.
            use chumsky::span::Span as _;
            let text_frag = any().try_map(|(tok, span): Spanned<Token>, _| match tok {
                Token::Text(s) | Token::Name(s) => Ok((s, span)),
                _ => Err(Rich::custom(span, "expected text fragment")),
            });
            let text = text_frag
                .repeated()
                .at_least(1)
                .collect::<Vec<(String, crate::Span)>>()
                .map_with(|parts, e| {
                    let mut combined = String::new();
                    let mut prev_end: Option<usize> = None;
                    for (s, span) in parts {
                        if let Some(end) = prev_end {
                            if end < span.start() {
                                combined.push(' ');
                            }
                        }
                        combined.push_str(&s);
                        prev_end = Some(span.end());
                    }
                    (XmlExpr::Text(combined), e.span())
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
                .then(child.repeated().collect::<Vec<_>>())
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

            choice((self_closing, full_element))
        });

        // Allow optional XML declarations and top-level comments before/after
        // the root element. Top-level comments are discarded (no element to
        // attach them to).
        top_skip
            .clone()
            .repeated()
            .ignore_then(element)
            .then_ignore(top_skip.repeated())
    }
}
