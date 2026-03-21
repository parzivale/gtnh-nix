use std::collections::HashMap;

use gtnh_nix::parsers::json::JsonParser;
use gtnh_nix::{GTNHParser, Ir};

fn parse(input: &str) -> Ir {
    JsonParser::parse(input).expect("parse failed")
}

#[test]
fn null() {
    assert_eq!(parse("null"), Ir::Null);
}

#[test]
fn booleans() {
    assert_eq!(parse("true"), Ir::Bool(true));
    assert_eq!(parse("false"), Ir::Bool(false));
}

#[test]
fn integers() {
    assert_eq!(parse("0"), Ir::Int(0));
    assert_eq!(parse("42"), Ir::Int(42));
    assert_eq!(parse("-7"), Ir::Int(-7));
}

#[test]
fn reals() {
    assert_eq!(parse("3.14"), Ir::Real(3.14));
    assert_eq!(parse("-0.5"), Ir::Real(-0.5));
}

#[test]
fn strings() {
    assert_eq!(parse(r#""hello""#), Ir::Str("hello".into()));
    assert_eq!(parse(r#""""#), Ir::Str(String::new()));
}

#[test]
fn string_escapes() {
    assert_eq!(parse(r#""a\nb""#), Ir::Str("a\nb".into()));
    assert_eq!(parse(r#""a\\b""#), Ir::Str("a\\b".into()));
    assert_eq!(parse(r#""a\"b""#), Ir::Str("a\"b".into()));
    assert_eq!(parse(r#""a\/b""#), Ir::Str("a/b".into()));
    assert_eq!(parse(r#""\u0041""#), Ir::Str("A".into()));
}

#[test]
fn empty_array() {
    assert_eq!(
        parse("[]"),
        Ir::Node {
            tag: None,
            attrs: None,
            children: Some(Vec::new()),
        }
    );
}

#[test]
fn array_of_ints() {
    assert_eq!(
        parse("[1, 2, 3]"),
        Ir::Node {
            tag: None,
            attrs: None,
            children: Some(vec![Ir::Int(1), Ir::Int(2), Ir::Int(3)])
        }
    );
}

#[test]
fn nested_array() {
    assert_eq!(
        parse("[[1], [2]]"),
        Ir::Node {
            children: Some(vec![
                Ir::Node {
                    tag: None,
                    attrs: None,
                    children: Some(vec![Ir::Int(1)])
                },
                Ir::Node {
                    tag: None,
                    attrs: None,
                    children: Some(vec![Ir::Int(2)])
                },
            ]),
            tag: None,
            attrs: None
        }
    );
}

#[test]
fn empty_object() {
    assert_eq!(
        parse("{}"),
        Ir::Node {
            tag: None,
            children: None,
            attrs: Some(HashMap::new())
        }
    );
}

#[test]
fn simple_object() {
    let ir = parse(r#"{"a": 1, "b": true}"#);
    match ir {
        Ir::Node {
            attrs: Some(attrs), ..
        } => {
            assert_eq!(attrs.get("a"), Some(&Ir::Int(1)));
            assert_eq!(attrs.get("b"), Some(&Ir::Bool(true)));
        }
        other => panic!("expected Object, got {:?}", other),
    }
}

#[test]
fn nested_object() {
    let ir = parse(r#"{"outer": {"inner": 42}}"#);
    match ir {
        Ir::Node {
            attrs: Some(map), ..
        } => match map.get("outer") {
            Some(Ir::Node {
                attrs: Some(inner), ..
            }) => {
                assert_eq!(inner.get("inner"), Some(&Ir::Int(42)));
            }
            other => panic!("expected nested Object, got {:?}", other),
        },
        other => panic!("expected Object, got {:?}", other),
    }
}

#[test]
fn mixed_values() {
    let ir = parse(r#"{"s": "hi", "n": null, "a": [1, false]}"#);
    match ir {
        Ir::Node {
            attrs: Some(map), ..
        } => {
            assert_eq!(map.get("s"), Some(&Ir::Str("hi".into())));
            assert_eq!(map.get("n"), Some(&Ir::Null));
            assert_eq!(
                map.get("a"),
                Some(&Ir::Node {
                    tag: None,
                    attrs: None,
                    children: Some(vec![Ir::Int(1), Ir::Bool(false)])
                })
            );
        }
        other => panic!("expected Object, got {:?}", other),
    }
}

#[test]
fn whitespace_insensitive() {
    let input = r#"
    {
        "key" :   "value"  ,
        "num" : 123
    }
    "#;
    let ir = parse(input);
    match ir {
        Ir::Node {
            attrs: Some(map), ..
        } => {
            assert_eq!(map.get("key"), Some(&Ir::Str("value".into())));
            assert_eq!(map.get("num"), Some(&Ir::Int(123)));
        }
        other => panic!("expected Object, got {:?}", other),
    }
}

#[test]
fn trailing_comma_in_array() {
    assert_eq!(
        parse("[1, 2,]"),
        Ir::Node {
            tag: None,
            attrs: None,
            children: Some(vec![Ir::Int(1), Ir::Int(2)])
        }
    );
}

#[test]
fn trailing_comma_in_object() {
    let ir = parse(r#"{"a": 1,}"#);
    match ir {
        Ir::Node {
            attrs: Some(map), ..
        } => {
            assert_eq!(map.len(), 1);
            assert_eq!(map.get("a"), Some(&Ir::Int(1)));
        }
        other => panic!("expected Object, got {:?}", other),
    }
}

#[test]
fn invalid_input_errors() {
    assert!(JsonParser::parse("").is_err());
    assert!(JsonParser::parse("{invalid}").is_err());
}
