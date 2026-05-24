use std::collections::HashMap;

use gtnh_nix::parsers::xml::XmlParser;
use gtnh_nix::{GTNHParser, Ir};

fn parse(input: &str) -> Ir {
    XmlParser::parse(input).expect("parse failed")
}

fn node(ir: &Ir) -> (&Option<String>, &Option<HashMap<String, Ir>>, &Option<Vec<Ir>>) {
    match ir {
        Ir::Node { tag, attrs, children } => (tag, attrs, children),
        other => panic!("expected Node, got {:?}", other),
    }
}

#[test]
fn self_closing_element() {
    let ir = parse(r#"<foo />"#);
    let (tag, attrs, children) = node(&ir);
    assert_eq!(tag.as_deref(), Some("foo"));
    assert!(attrs.is_none());
    assert!(children.is_none());
}

#[test]
fn element_with_attributes() {
    let ir = parse(r#"<foo bar="baz" qux="42" />"#);
    let (tag, attrs, _) = node(&ir);
    assert_eq!(tag.as_deref(), Some("foo"));
    let a = attrs.as_ref().expect("attrs missing");
    assert_eq!(a.get("@bar"), Some(&Ir::Str("baz".into())));
    assert_eq!(a.get("@qux"), Some(&Ir::Int(42)));
}

#[test]
fn open_close_with_text() {
    let ir = parse(r#"<foo>hello</foo>"#);
    let (tag, _, children) = node(&ir);
    assert_eq!(tag.as_deref(), Some("foo"));
    let c = children.as_ref().expect("children missing");
    assert_eq!(c.len(), 1);
    assert_eq!(c[0], Ir::Str("hello".into()));
}

#[test]
fn text_type_inference() {
    let ir = parse(r#"<x>42</x>"#);
    let (_, _, children) = node(&ir);
    let c = children.as_ref().expect("children missing");
    assert_eq!(c[0], Ir::Int(42));

    let ir = parse(r#"<x>true</x>"#);
    let (_, _, children) = node(&ir);
    let c = children.as_ref().expect("children missing");
    assert_eq!(c[0], Ir::Bool(true));
}

#[test]
fn nested_elements() {
    let ir = parse(r#"<root><a>1</a><b>2</b></root>"#);
    let (tag, _, children) = node(&ir);
    assert_eq!(tag.as_deref(), Some("root"));
    let c = children.as_ref().expect("children missing");
    assert_eq!(c.len(), 2);
    let (tag_a, _, _) = node(&c[0]);
    assert_eq!(tag_a.as_deref(), Some("a"));
    let (tag_b, _, _) = node(&c[1]);
    assert_eq!(tag_b.as_deref(), Some("b"));
}

#[test]
fn xml_declaration_ignored() {
    let ir = parse(r#"<?xml version="1.0"?><foo />"#);
    let (tag, _, _) = node(&ir);
    assert_eq!(tag.as_deref(), Some("foo"));
}

#[test]
fn comment_attaches_to_next_element_as_doc() {
    let ir = parse(r#"<root><!-- describes a --><a>1</a></root>"#);
    let (_, _, children) = node(&ir);
    let c = children.as_ref().expect("children missing");
    assert_eq!(c.len(), 1);
    match &c[0] {
        Ir::Documented { doc, inner } => {
            assert_eq!(doc, "describes a");
            let (tag, _, _) = node(inner);
            assert_eq!(tag.as_deref(), Some("a"));
        }
        other => panic!("expected Documented Node, got {:?}", other),
    }
}

#[test]
fn comment_consumed_only_once() {
    let ir = parse(r#"<root><!-- only on a --><a>1</a><b>2</b></root>"#);
    let (_, _, children) = node(&ir);
    let c = children.as_ref().expect("children missing");
    assert_eq!(c.len(), 2);
    assert!(matches!(c[0], Ir::Documented { .. }));
    assert!(matches!(c[1], Ir::Node { .. }));
}

#[test]
fn comment_then_text_child() {
    // Element with a comment immediately followed by a text node.
    // The comment must be flushed as the doc on the text child.
    let ir = parse(r#"<root><!-- describes the text -->hello</root>"#);
    let (_, _, children) = node(&ir);
    let c = children.as_ref().expect("children missing");
    assert_eq!(c.len(), 1);
    match &c[0] {
        Ir::Documented { doc, inner } => {
            assert_eq!(doc, "describes the text");
            assert_eq!(**inner, Ir::Str("hello".into()));
        }
        other => panic!("expected Documented Str, got {:?}", other),
    }
}

#[test]
fn single_quoted_attribute() {
    let ir = parse(r#"<foo bar='baz' />"#);
    let (_, attrs, _) = node(&ir);
    let a = attrs.as_ref().expect("attrs missing");
    assert_eq!(a.get("@bar"), Some(&Ir::Str("baz".into())));
}
