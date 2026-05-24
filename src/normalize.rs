//! Semantic-equivalence comparator for config files.
//!
//! Mirrors the old Python `scripts/normalize.py`: parses both files via the
//! Rust parsers (with format detection), normalizes values (canonical booleans
//! / numbers, collapsed whitespace, stripped key quotes), sorts list elements,
//! and diffs the two trees. Used by `checks.nix` to validate that a rendered
//! config matches the original byte-for-meaning.

use crate::nix_gen::parse_with_detected_format;
use crate::Ir;
use std::collections::BTreeMap;
use std::fs;
use std::path::Path;

#[derive(Debug, Clone, PartialEq, Eq, PartialOrd, Ord)]
enum NormVal {
    Bool(bool),
    /// Numeric value (collapsed int+float — `1` and `1.0` normalize to the
    /// same canonical string so HOCON-rendered floats compare equal to the
    /// original's integer literals).
    Num(String),
    Str(String),
    List(Vec<NormVal>),
    Map(BTreeMap<String, NormVal>),
}

/// Returns `0` on match, `1` on mismatch. The CLI exits with this status.
pub fn run(original: &Path, rendered: &Path) -> i32 {
    let lhs = parse_and_normalize(original);
    let rhs = parse_and_normalize(rendered);
    if lhs == rhs {
        return 0;
    }
    println!("MISMATCH:\n");
    let mut diffs = Vec::new();
    diff(&lhs, &rhs, String::new(), &mut diffs);
    for line in diffs {
        println!("  {line}");
    }
    1
}

fn parse_and_normalize(path: &Path) -> NormVal {
    let text = fs::read_to_string(path).unwrap_or_default();
    match parse_with_detected_format(path, &text) {
        Some(ir) => normalize(&ir),
        None => NormVal::Map(BTreeMap::new()),
    }
}

fn strip_doc(ir: &Ir) -> &Ir {
    match ir {
        Ir::Documented { inner, .. } => inner,
        other => other,
    }
}

fn normalize(ir: &Ir) -> NormVal {
    let ir = strip_doc(ir);
    match ir {
        // JSON `null` becomes the literal string `"None"` once it round-trips
        // through Nix (the renderer has no null sentinel), so we normalize
        // both forms to the same canonical Str.
        Ir::Null => NormVal::Str("None".into()),
        Ir::Bool(b) => NormVal::Bool(*b),
        Ir::Int(n) => NormVal::Num(canonical_number(*n as f64)),
        Ir::Real(f) => NormVal::Num(canonical_number(*f)),
        Ir::Str(s) => {
            let s = canonical_string(s);
            // Python normalize handles bool-shaped strings (true/1, false/0)
            // identically to typed bools. We do the same so that an
            // untyped/parsed `S:foo=true` compares equal to `B:foo=true`.
            match s.to_ascii_lowercase().as_str() {
                "true" | "false" => NormVal::Bool(s.eq_ignore_ascii_case("true")),
                _ => NormVal::Str(s),
            }
        }
        Ir::Node { attrs, children, .. } => match (attrs, children) {
            (None, None) => NormVal::Map(BTreeMap::new()),
            (Some(a), None) => collapse_numeric_map(map_from_attrs(a)),
            (None, Some(c)) => NormVal::List(list_from_children(c)),
            (Some(a), Some(c)) => {
                let mut m = map_from_attrs(a);
                // Folding children in under numeric keys keeps both sides
                // comparable when one side parses an XML element's text
                // separately from its attributes.
                for (i, child) in c.iter().enumerate() {
                    let v = normalize(child);
                    if !is_empty(&v) {
                        m.insert(format!("_child_{i}"), v);
                    }
                }
                NormVal::Map(m)
            }
        },
        Ir::Documented { .. } => unreachable!(),
    }
}

/// If every key is a decimal integer, treat the map as a list (sorted by key
/// numerically). This collapses lib.nix's "JSON array → submodule with `0`,
/// `1`, ... keys" workaround back to an actual list, so it compares equal to
/// the original JSON array.
fn collapse_numeric_map(m: BTreeMap<String, NormVal>) -> NormVal {
    if m.is_empty() {
        return NormVal::Map(m);
    }
    let mut indexed: Vec<(usize, NormVal)> = Vec::with_capacity(m.len());
    for (k, v) in &m {
        match k.parse::<usize>() {
            Ok(i) => indexed.push((i, v.clone())),
            Err(_) => return NormVal::Map(m),
        }
    }
    indexed.sort_by_key(|(i, _)| *i);
    let mut items: Vec<NormVal> = indexed.into_iter().map(|(_, v)| v).collect();
    items.sort();
    NormVal::List(items)
}

fn map_from_attrs(attrs: &std::collections::HashMap<String, Ir>) -> BTreeMap<String, NormVal> {
    let mut m = BTreeMap::new();
    for (k, v) in attrs {
        let key = canonical_key(k);
        if key.is_empty() {
            continue;
        }
        let val = normalize(v);
        if is_empty(&val) {
            continue;
        }
        m.insert(key, val);
    }
    m
}

fn list_from_children(items: &[Ir]) -> Vec<NormVal> {
    let mut out: Vec<NormVal> = items
        .iter()
        .map(normalize)
        .filter(|v| !is_empty(v))
        .collect();
    out.sort();
    out
}

fn is_empty(v: &NormVal) -> bool {
    match v {
        NormVal::Str(s) => s.is_empty(),
        NormVal::List(items) => items.is_empty(),
        NormVal::Map(m) => m.is_empty(),
        _ => false,
    }
}

fn canonical_string(s: &str) -> String {
    let collapsed: String = s
        .chars()
        .map(|c| match c {
            '\t' | '\r' | '\n' | '\u{a0}' => ' ',
            _ => c,
        })
        .collect();
    let mut out = String::with_capacity(collapsed.len());
    let mut prev_space = false;
    for ch in collapsed.chars() {
        if ch == ' ' {
            if !prev_space {
                out.push(' ');
            }
            prev_space = true;
        } else {
            out.push(ch);
            prev_space = false;
        }
    }
    out.trim().to_string()
}

fn canonical_key(k: &str) -> String {
    let mut s = canonical_string(k);
    while s.starts_with('"') && s.ends_with('"') && s.len() > 1 {
        s = s[1..s.len() - 1].to_string();
    }
    s
}

/// Canonicalize a number to Python's `f"{f:.15g}"` form: at most 15
/// significant digits, no trailing zeros, no unnecessary decimal point.
fn canonical_number(f: f64) -> String {
    if f.is_nan() {
        return "nan".into();
    }
    if f.is_infinite() {
        return if f > 0.0 { "inf".into() } else { "-inf".into() };
    }
    if f == 0.0 {
        return "0".into();
    }
    let abs = f.abs();
    let exp = abs.log10().floor() as i32;
    // Use scientific notation outside the same window Python's `%g` does:
    // -4 <= exp < precision (15). Otherwise fall back to fixed-point with
    // enough decimals to capture 15 significant digits.
    if exp < -4 || exp >= 15 {
        let s = format!("{:.14e}", f);
        // Trim trailing zeros in the mantissa.
        if let Some(idx) = s.find('e') {
            let (mantissa, exp_part) = s.split_at(idx);
            let mantissa = mantissa.trim_end_matches('0').trim_end_matches('.');
            return format!("{mantissa}{exp_part}");
        }
        s
    } else {
        let decimals = (14 - exp).max(0) as usize;
        let s = format!("{:.*}", decimals, f);
        let s = s.trim_end_matches('0').trim_end_matches('.');
        s.to_string()
    }
}

// ---- Diff rendering ----

fn diff(lhs: &NormVal, rhs: &NormVal, path: String, out: &mut Vec<String>) {
    if lhs == rhs {
        return;
    }
    match (lhs, rhs) {
        (NormVal::Map(l), NormVal::Map(r)) => {
            let mut keys: Vec<&String> = l.keys().chain(r.keys()).collect();
            keys.sort();
            keys.dedup();
            for k in keys {
                let sub = if path.is_empty() {
                    k.clone()
                } else {
                    format!("{path}.{k}")
                };
                match (l.get(k), r.get(k)) {
                    (Some(a), Some(b)) if a != b => diff(a, b, sub, out),
                    (None, Some(b)) => out.push(format!("+ {sub}: {}", show(b))),
                    (Some(a), None) => out.push(format!("- {sub}: {}", show(a))),
                    _ => {}
                }
            }
        }
        _ => {
            out.push(format!("- {path}: {}", show(lhs)));
            out.push(format!("+ {path}: {}", show(rhs)));
        }
    }
}

fn show(v: &NormVal) -> String {
    match v {
        NormVal::Bool(b) => format!("bool:{b}"),
        NormVal::Num(s) => format!("num:{s}"),
        NormVal::Str(s) => format!("str:{s}"),
        NormVal::List(items) => {
            let parts: Vec<String> = items.iter().map(show).collect();
            format!("[{}]", parts.join(","))
        }
        NormVal::Map(_) => "{...}".into(),
    }
}
