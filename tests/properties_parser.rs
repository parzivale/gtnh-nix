use std::collections::HashMap;

use gtnh_nix::parsers::properties::PropertiesParser;
use gtnh_nix::{GTNHParser, Ir};

fn parse(input: &str) -> Ir {
    PropertiesParser::parse(input).expect("parse failed")
}

fn attrs(ir: &Ir) -> &HashMap<String, Ir> {
    match ir {
        Ir::Node { attrs: Some(a), .. } => a,
        other => panic!("expected Node with attrs, got {:?}", other),
    }
}

#[test]
fn equals_separator() {
    let ir = parse("foo=42\n");
    assert_eq!(attrs(&ir).get("foo"), Some(&Ir::Int(42)));
}

#[test]
fn colon_separator() {
    let ir = parse("foo:42\n");
    assert_eq!(attrs(&ir).get("foo"), Some(&Ir::Int(42)));
}

#[test]
fn multiple_entries() {
    let ir = parse("a=1\nb=true\nc=hello\n");
    let a = attrs(&ir);
    assert_eq!(a.get("a"), Some(&Ir::Int(1)));
    assert_eq!(a.get("b"), Some(&Ir::Bool(true)));
    assert_eq!(a.get("c"), Some(&Ir::Str("hello".into())));
}

#[test]
fn hash_comment_as_doc() {
    let ir = parse("# describes foo\nfoo=1\n");
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
fn bang_comment_as_doc() {
    let ir = parse("! describes foo\nfoo=1\n");
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
fn multi_line_comment_joins() {
    let ir = parse("# line one\n# line two\nfoo=1\n");
    let a = attrs(&ir);
    assert_eq!(
        a.get("foo"),
        Some(&Ir::Documented {
            doc: "line one\nline two".into(),
            inner: Box::new(Ir::Int(1)),
        })
    );
}

#[test]
fn comment_consumed_only_once() {
    let ir = parse("# only on foo\nfoo=1\nbar=2\n");
    let a = attrs(&ir);
    assert!(matches!(a.get("foo"), Some(Ir::Documented { .. })));
    assert_eq!(a.get("bar"), Some(&Ir::Int(2)));
}

#[test]
fn float_inference() {
    let ir = parse("ratio=0.5\n");
    assert_eq!(attrs(&ir).get("ratio"), Some(&Ir::Real(0.5)));
}

#[test]
fn blank_lines_ignored() {
    let ir = parse("\na=1\n\nb=2\n\n");
    let a = attrs(&ir);
    assert_eq!(a.get("a"), Some(&Ir::Int(1)));
    assert_eq!(a.get("b"), Some(&Ir::Int(2)));
}

#[test]
fn invalid_input_errors() {
    use gtnh_nix::parsers::properties::PropertiesParser;
    use gtnh_nix::GTNHParser;
    // Empty input has nothing to parse but should still succeed (empty file).
    // A lone equals triggers the parser's error path.
    assert!(PropertiesParser::parse("= value\n").is_err());
}

#[test]
fn blank_line_resets_pending_doc() {
    let ir = parse("# orphan\n\nfoo=1\n");
    let a = attrs(&ir);
    assert_eq!(a.get("foo"), Some(&Ir::Int(1)));
}

#[test]
fn blank_line_clears_only_orphaned_doc() {
    let ir = parse("# orphan\n\n# attached\nbar=2\n");
    let a = attrs(&ir);
    assert_eq!(
        a.get("bar"),
        Some(&Ir::Documented {
            doc: "attached".into(),
            inner: Box::new(Ir::Int(2)),
        })
    );
}
