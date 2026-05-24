use std::collections::HashMap;

use gtnh_nix::parsers::forge::ForgeParser;
use gtnh_nix::{GTNHParser, Ir};

fn parse(input: &str) -> Ir {
    ForgeParser::parse(input).expect("parse failed")
}

fn attrs(ir: &Ir) -> &HashMap<String, Ir> {
    match ir {
        Ir::Node { attrs: Some(a), .. } => a,
        other => panic!("expected Node with attrs, got {:?}", other),
    }
}

#[test]
fn empty_file() {
    let ir = parse("");
    assert!(attrs(&ir).is_empty());
}

#[test]
fn typed_bool_entry() {
    let ir = parse("B:enable=true\n");
    assert_eq!(attrs(&ir).get("enable"), Some(&Ir::Bool(true)));
}

#[test]
fn typed_int_entry() {
    let ir = parse("I:count=42\n");
    assert_eq!(attrs(&ir).get("count"), Some(&Ir::Int(42)));
}

#[test]
fn typed_float_entry() {
    let ir = parse("D:ratio=0.5\n");
    assert_eq!(attrs(&ir).get("ratio"), Some(&Ir::Real(0.5)));
}

#[test]
fn typed_string_entry() {
    let ir = parse("S:name=hello\n");
    assert_eq!(attrs(&ir).get("name"), Some(&Ir::Str("hello".into())));
}

#[test]
fn untyped_entry_infers_type() {
    let ir = parse("foo=42\nbar=true\nbaz=hi\n");
    let a = attrs(&ir);
    assert_eq!(a.get("foo"), Some(&Ir::Int(42)));
    assert_eq!(a.get("bar"), Some(&Ir::Bool(true)));
    assert_eq!(a.get("baz"), Some(&Ir::Str("hi".into())));
}

#[test]
fn section_with_children() {
    let ir = parse("general {\n    B:foo=true\n    I:bar=7\n}\n");
    let outer = attrs(&ir);
    let section = outer.get("general").expect("section missing");
    let inner = attrs(section);
    assert_eq!(inner.get("foo"), Some(&Ir::Bool(true)));
    assert_eq!(inner.get("bar"), Some(&Ir::Int(7)));
}

#[test]
fn typed_list() {
    let ir = parse("S:fruits <\n    apple\n    banana\n>\n");
    let a = attrs(&ir);
    assert_eq!(
        a.get("fruits"),
        Some(&Ir::Node {
            tag: None,
            attrs: None,
            children: Some(vec![Ir::Str("apple".into()), Ir::Str("banana".into())])
        })
    );
}

#[test]
fn list_values_can_contain_gt() {
    // MCFrames.cfg-style list where values contain `->` arrows.
    // The close `>` is recognized only when it appears at start-of-line.
    let ir = parse("S:arrows <\n    foo -> bar\n    baz -> qux\n>\n");
    let a = attrs(&ir);
    assert_eq!(
        a.get("arrows"),
        Some(&Ir::Node {
            tag: None,
            attrs: None,
            children: Some(vec![
                Ir::Str("foo -> bar".into()),
                Ir::Str("baz -> qux".into()),
            ])
        })
    );
}

#[test]
fn empty_string_value() {
    // `S:foo=` followed by newline should yield an empty string.
    let ir = parse("S:foo=\n");
    let a = attrs(&ir);
    assert_eq!(a.get("foo"), Some(&Ir::Str(String::new())));
}

#[test]
fn value_with_spaces_and_commas() {
    // BiblioCraft.cfg-style: comma-separated string value with spaces.
    let ir = parse("S:items=a, b with spaces, c\n");
    let a = attrs(&ir);
    assert_eq!(
        a.get("items"),
        Some(&Ir::Str("a, b with spaces, c".into()))
    );
}

#[test]
fn bool_prefix_treats_non_true_as_false() {
    // `B:` is always bool. Matching Python's renderer: only the literal
    // `true` (case-insensitive) becomes true, everything else (including
    // `0`, `1`, arbitrary strings) becomes false.
    assert_eq!(
        attrs(&parse("B:a=true\n")).get("a"),
        Some(&Ir::Bool(true))
    );
    assert_eq!(
        attrs(&parse("B:b=0\n")).get("b"),
        Some(&Ir::Bool(false))
    );
    assert_eq!(
        attrs(&parse("B:c=weird\n")).get("c"),
        Some(&Ir::Bool(false))
    );
}

#[test]
fn int_prefix_truncates_float_shaped_value() {
    // `I:foo=4.0` should produce Int(4) because some Forge configs write
    // integer values with a trailing `.0`. Python's renderer does the same
    // via `int(float(...))`.
    assert_eq!(
        attrs(&parse("I:foo=4.0\n")).get("foo"),
        Some(&Ir::Int(4))
    );
}

#[test]
fn int_prefix_with_non_numeric_falls_back_to_string() {
    let ir = parse("I:foo=notanint\n");
    let a = attrs(&ir);
    assert_eq!(a.get("foo"), Some(&Ir::Str("notanint".into())));
}

#[test]
fn float_prefix_with_non_float_value_falls_back_to_string() {
    let ir = parse("D:foo=notafloat\n");
    let a = attrs(&ir);
    assert_eq!(a.get("foo"), Some(&Ir::Str("notafloat".into())));
}

#[test]
fn untyped_list() {
    // List without a type prefix.
    let ir = parse("fruits <\n    apple\n    pear\n>\n");
    let a = attrs(&ir);
    assert_eq!(
        a.get("fruits"),
        Some(&Ir::Node {
            tag: None,
            attrs: None,
            children: Some(vec![Ir::Str("apple".into()), Ir::Str("pear".into())])
        })
    );
}

#[test]
fn garbage_line_is_skipped() {
    // Forge-format file with a stray non-entry line (e.g. NEI hiddenitems).
    // The garbage recovery should skip such lines, parsing the valid ones.
    let ir = parse("B:foo=true\nminecraft:portal\nB:bar=false\n");
    let a = attrs(&ir);
    assert_eq!(a.get("foo"), Some(&Ir::Bool(true)));
    assert_eq!(a.get("bar"), Some(&Ir::Bool(false)));
}

#[test]
fn quoted_section_name() {
    // BiblioCraft.cfg-style: section name is a quoted string with spaces.
    let ir = parse(r#""blocks enabled" {
    B:foo=true
}
"#);
    let a = attrs(&ir);
    let section = a.get("blocks enabled").expect("section missing");
    let inner = match section {
        Ir::Node { attrs: Some(a), .. } => a,
        other => panic!("expected section, got {:?}", other),
    };
    assert_eq!(inner.get("foo"), Some(&Ir::Bool(true)));
}

#[test]
fn comment_attaches_as_doc() {
    let ir = parse("# describes foo\nB:foo=true\n");
    let a = attrs(&ir);
    assert_eq!(
        a.get("foo"),
        Some(&Ir::Documented {
            doc: "describes foo".into(),
            inner: Box::new(Ir::Bool(true)),
        })
    );
}

#[test]
fn multi_line_comment_joins() {
    let ir = parse("# line one\n# line two\nB:foo=true\n");
    let a = attrs(&ir);
    assert_eq!(
        a.get("foo"),
        Some(&Ir::Documented {
            doc: "line one\nline two".into(),
            inner: Box::new(Ir::Bool(true)),
        })
    );
}

#[test]
fn comment_attaches_to_section() {
    let ir = parse("# describes section\ngeneral {\n    B:foo=true\n}\n");
    let a = attrs(&ir);
    let section = a.get("general").expect("section missing");
    match section {
        Ir::Documented { doc, inner } => {
            assert_eq!(doc, "describes section");
            assert!(matches!(**inner, Ir::Node { .. }));
        }
        other => panic!("expected Documented Node, got {:?}", other),
    }
}

#[test]
fn comment_consumed_only_once() {
    // After being attached to foo, comment should not also attach to bar.
    let ir = parse("# only on foo\nB:foo=true\nB:bar=false\n");
    let a = attrs(&ir);
    assert!(matches!(a.get("foo"), Some(Ir::Documented { .. })));
    assert_eq!(a.get("bar"), Some(&Ir::Bool(false)));
}

#[test]
fn blank_line_resets_pending_doc() {
    // Comment followed by a blank line should NOT attach to the next entry.
    let ir = parse("# orphaned comment\n\nB:foo=true\n");
    let a = attrs(&ir);
    assert_eq!(a.get("foo"), Some(&Ir::Bool(true)));
}

#[test]
fn blank_line_resets_only_when_followed_by_blank() {
    // First comment has a blank line after it (orphaned).
    // Second comment is directly adjacent to bar (attached).
    let ir = parse("# orphan\n\n# attached\nB:bar=false\n");
    let a = attrs(&ir);
    assert_eq!(
        a.get("bar"),
        Some(&Ir::Documented {
            doc: "attached".into(),
            inner: Box::new(Ir::Bool(false)),
        })
    );
}
