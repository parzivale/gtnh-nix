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
    Int(i32),
    Real(f32),
    Str(String),
    Doc(String),
    Node {
        tag: Option<String>, // None for plain objects, Some for XML elements
        attrs: Option<HashMap<String, Self>>,
        children: Option<Vec<Self>>,
    },
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

        for (i, t) in ltt.iter().enumerate() { eprintln!("{i}: {t:?}"); }
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

