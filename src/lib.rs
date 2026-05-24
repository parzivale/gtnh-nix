pub mod nix_gen;
pub mod normalize;
pub mod parsers;

use chumsky::{error::Rich, extra::Err, span::SimpleSpan, Parser};
use snafu::prelude::*;
use std::collections::HashMap;
use std::fmt::Debug;

pub type Span = SimpleSpan;
pub type Spanned<T> = (T, Span);

#[derive(Clone, Debug, PartialEq)]
pub enum Ir {
    Null,
    Bool(bool),
    Int(i64),
    Real(f64),
    Str(String),
    Documented {
        doc: String,
        inner: Box<Ir>,
    },
    Node {
        tag: Option<String>, // None for plain objects, Some for XML elements
        attrs: Option<HashMap<String, Self>>,
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

#[derive(Debug, Snafu)]
pub enum GtnhParserError {
    #[snafu(display("Lexer errors: {:?}", errors))]
    LexerError { errors: Vec<String> },
    #[snafu(display("Parser errors: {:?}", errors))]
    ParserError { errors: Vec<String> },
}

pub trait GTNHParser {
    type LexerToken: 'static + PartialEq + Debug;
    type ParserExpr: PartialEq + Into<Ir>;
    fn lexer<'a>() -> impl Parser<'a, &'a str, Vec<Spanned<Self::LexerToken>>, Err<Rich<'a, char>>>;
    fn parser<'b>() -> impl Parser<
        'b,
        &'b [Spanned<Self::LexerToken>],
        Spanned<Self::ParserExpr>,
        Err<Rich<'b, Spanned<Self::LexerToken>>>,
    >;

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

