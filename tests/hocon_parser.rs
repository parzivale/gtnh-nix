use std::collections::HashMap;

use gtnh_nix::parsers::hocon::HoconParser;
use gtnh_nix::{GTNHParser, Ir};

fn parse(input: &str) -> Ir {
    HoconParser::parse(input).expect("parse failed")
}

fn attrs(ir: &Ir) -> &HashMap<String, Ir> {
    match ir {
        Ir::Node { attrs: Some(a), .. } => a,
        other => panic!("expected Node with attrs, got {:?}", other),
    }
}

#[test]
fn atomic_int() {
    assert_eq!(parse("42"), Ir::Int(42));
}

#[test]
fn atomic_bool() {
    assert_eq!(parse("true"), Ir::Bool(true));
    assert_eq!(parse("false"), Ir::Bool(false));
}

#[test]
fn atomic_real() {
    assert_eq!(parse("3.14"), Ir::Real(3.14));
}

#[test]
fn atomic_string() {
    assert_eq!(parse(r#""hello""#), Ir::Str("hello".into()));
}

#[test]
fn empty_object() {
    let ir = parse("{}");
    assert!(attrs(&ir).is_empty());
}

#[test]
fn braceless_top_level_object() {
    let ir = parse("foo = 1\nbar = true\n");
    let a = attrs(&ir);
    assert_eq!(a.get("foo"), Some(&Ir::Int(1)));
    assert_eq!(a.get("bar"), Some(&Ir::Bool(true)));
}

#[test]
fn braceless_with_dotted_keys() {
    // Forestry-style file: dotted-path keys at top level
    let ir = parse("apiary.sidesensitive=false\nbeekeeping.mode=HARD\n");
    let a = attrs(&ir);
    assert_eq!(a.get("apiary.sidesensitive"), Some(&Ir::Bool(false)));
    assert_eq!(a.get("beekeeping.mode"), Some(&Ir::Str("HARD".into())));
}

#[test]
fn empty_value_after_equals() {
    // Forestry's beekeeping.flowers.custom= (no value) → empty string.
    let ir = parse("foo=\nbar=2\n");
    let a = attrs(&ir);
    assert_eq!(a.get("foo"), Some(&Ir::Str(String::new())));
    assert_eq!(a.get("bar"), Some(&Ir::Int(2)));
}

#[test]
fn object_with_equals() {
    let ir = parse("{ foo = 1, bar = true }");
    let a = attrs(&ir);
    assert_eq!(a.get("foo"), Some(&Ir::Int(1)));
    assert_eq!(a.get("bar"), Some(&Ir::Bool(true)));
}

#[test]
fn object_with_colon() {
    let ir = parse("{ foo: 1, bar: \"hi\" }");
    let a = attrs(&ir);
    assert_eq!(a.get("foo"), Some(&Ir::Int(1)));
    assert_eq!(a.get("bar"), Some(&Ir::Str("hi".into())));
}

#[test]
fn newline_separated_members() {
    let ir = parse("{\n  foo = 1\n  bar = 2\n}");
    let a = attrs(&ir);
    assert_eq!(a.get("foo"), Some(&Ir::Int(1)));
    assert_eq!(a.get("bar"), Some(&Ir::Int(2)));
}

#[test]
fn nested_object() {
    let ir = parse("{ outer = { inner = 42 } }");
    let outer_attrs = attrs(&ir);
    let inner = outer_attrs.get("outer").expect("missing outer");
    let inner_attrs = attrs(inner);
    assert_eq!(inner_attrs.get("inner"), Some(&Ir::Int(42)));
}

#[test]
fn object_with_implicit_brace() {
    // key { ... } shorthand without equals
    let ir = parse("{ section { foo = 1 } }");
    let a = attrs(&ir);
    let section = a.get("section").expect("missing section");
    let inner = attrs(section);
    assert_eq!(inner.get("foo"), Some(&Ir::Int(1)));
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
fn empty_array() {
    assert_eq!(
        parse("[]"),
        Ir::Node {
            tag: None,
            attrs: None,
            children: Some(Vec::new())
        }
    );
}

#[test]
fn hash_comment_as_doc() {
    let ir = parse("{\n  # describes foo\n  foo = 1\n}");
    let a = attrs(&ir);
    assert_eq!(
        a.get("foo"),
        Some(&Ir::Documented {
            doc: "describes foo".into(),
            inner: Box::new(Ir::Int(1)),
        })
    );
}

#[test]
fn slash_comment_as_doc() {
    let ir = parse("{\n  // describes foo\n  foo = 1\n}");
    let a = attrs(&ir);
    assert_eq!(
        a.get("foo"),
        Some(&Ir::Documented {
            doc: "describes foo".into(),
            inner: Box::new(Ir::Int(1)),
        })
    );
}

#[test]
fn comment_consumed_only_once() {
    let ir = parse("{\n  # only on foo\n  foo = 1\n  bar = 2\n}");
    let a = attrs(&ir);
    assert!(matches!(a.get("foo"), Some(Ir::Documented { .. })));
    assert_eq!(a.get("bar"), Some(&Ir::Int(2)));
}

#[test]
fn blank_line_resets_pending_doc() {
    let ir = parse("{\n  # orphaned\n\n  foo = 1\n}");
    let a = attrs(&ir);
    assert_eq!(a.get("foo"), Some(&Ir::Int(1)));
}

#[test]
fn blank_line_clears_only_orphaned_doc() {
    let ir = parse("{\n  # orphan\n\n  # attached\n  bar = 2\n}");
    let a = attrs(&ir);
    assert_eq!(
        a.get("bar"),
        Some(&Ir::Documented {
            doc: "attached".into(),
            inner: Box::new(Ir::Int(2)),
        })
    );
}
