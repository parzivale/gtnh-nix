use std::collections::HashMap;

use gtnh_nix::parsers::ini::IniParser;
use gtnh_nix::{GTNHParser, Ir};

fn parse(input: &str) -> Ir {
    IniParser::parse(input).expect("parse failed")
}

fn section<'a>(ir: &'a Ir, name: &str) -> &'a HashMap<String, Ir> {
    let outer = match ir {
        Ir::Node { attrs: Some(a), .. } => a,
        other => panic!("expected Node with attrs, got {:?}", other),
    };
    let sec = outer
        .get(name)
        .unwrap_or_else(|| panic!("section {name} missing"));
    match sec {
        Ir::Node { attrs: Some(a), .. } => a,
        other => panic!("expected section Node, got {:?}", other),
    }
}

#[test]
fn single_section_with_entries() {
    let ir = parse("[general]\nfoo=42\nbar=hello\n");
    let g = section(&ir, "general");
    assert_eq!(g.get("foo"), Some(&Ir::Int(42)));
    assert_eq!(g.get("bar"), Some(&Ir::Str("hello".into())));
}

#[test]
fn multiple_sections() {
    let ir = parse("[a]\nx=1\n[b]\ny=2\n");
    assert_eq!(section(&ir, "a").get("x"), Some(&Ir::Int(1)));
    assert_eq!(section(&ir, "b").get("y"), Some(&Ir::Int(2)));
}

#[test]
fn bool_inference_yes_no_on_off() {
    let ir = parse("[s]\na=yes\nb=no\nc=on\nd=off\ne=true\nf=false\n");
    let s = section(&ir, "s");
    assert_eq!(s.get("a"), Some(&Ir::Bool(true)));
    assert_eq!(s.get("b"), Some(&Ir::Bool(false)));
    assert_eq!(s.get("c"), Some(&Ir::Bool(true)));
    assert_eq!(s.get("d"), Some(&Ir::Bool(false)));
    assert_eq!(s.get("e"), Some(&Ir::Bool(true)));
    assert_eq!(s.get("f"), Some(&Ir::Bool(false)));
}

#[test]
fn entries_before_any_header_go_to_default() {
    let ir = parse("foo=1\n[other]\nbar=2\n");
    assert_eq!(section(&ir, "default").get("foo"), Some(&Ir::Int(1)));
    assert_eq!(section(&ir, "other").get("bar"), Some(&Ir::Int(2)));
}

#[test]
fn hash_comment_as_doc() {
    let ir = parse("[g]\n# describes foo\nfoo=1\n");
    let g = section(&ir, "g");
    assert_eq!(
        g.get("foo"),
        Some(&Ir::Documented {
            doc: "describes foo".into(),
            inner: Box::new(Ir::Int(1)),
        })
    );
}

#[test]
fn semicolon_comment_as_doc() {
    let ir = parse("[g]\n; describes foo\nfoo=1\n");
    let g = section(&ir, "g");
    assert_eq!(
        g.get("foo"),
        Some(&Ir::Documented {
            doc: "describes foo".into(),
            inner: Box::new(Ir::Int(1)),
        })
    );
}

#[test]
fn comment_consumed_only_once() {
    let ir = parse("[g]\n# only on foo\nfoo=1\nbar=2\n");
    let g = section(&ir, "g");
    assert!(matches!(g.get("foo"), Some(Ir::Documented { .. })));
    assert_eq!(g.get("bar"), Some(&Ir::Int(2)));
}

#[test]
fn blank_lines_ignored() {
    let ir = parse("[g]\n\nfoo=1\n\n\nbar=2\n");
    let g = section(&ir, "g");
    assert_eq!(g.get("foo"), Some(&Ir::Int(1)));
    assert_eq!(g.get("bar"), Some(&Ir::Int(2)));
}

#[test]
fn invalid_input_errors() {
    use gtnh_nix::parsers::ini::IniParser;
    use gtnh_nix::GTNHParser;
    // A lone equals sign without a key triggers the parser's error paths.
    assert!(IniParser::parse("= value\n").is_err());
}

#[test]
fn blank_line_resets_pending_doc() {
    let ir = parse("[g]\n# orphan\n\nfoo=1\n");
    let g = section(&ir, "g");
    assert_eq!(g.get("foo"), Some(&Ir::Int(1)));
}

#[test]
fn blank_line_clears_only_orphaned_doc() {
    let ir = parse("[g]\n# orphan\n\n# attached\nbar=2\n");
    let g = section(&ir, "g");
    assert_eq!(
        g.get("bar"),
        Some(&Ir::Documented {
            doc: "attached".into(),
            inner: Box::new(Ir::Int(2)),
        })
    );
}
