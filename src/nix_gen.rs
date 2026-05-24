//! Nix option file generator: discovers config files in a GTNH pack, parses
//! them via the appropriate Rust parser, and emits Nix `lib.mkOption` blocks
//! grouped by mod directory. Mirrors the Python `scripts/gen_cfg_options.py`.

use crate::parsers::{forge, hocon, ini, json, properties, xml};
use crate::{GTNHParser, Ir};
use std::collections::{BTreeMap, BTreeSet};
use std::fs;
use std::io;
use std::path::{Path, PathBuf};

/// Config file extensions the generator considers. Everything else is skipped.
const SUPPORTED_EXTENSIONS: &[&str] = &["cfg", "conf", "config", "json", "xml", "ini", "properties"];

/// Directories under config/ that contain quest/data, not configuration.
const SKIP_DIRS: &[&str] = &["betterquesting", "roguelike_dungeons"];

/// Specific files whose contents are non-standard (custom DSLs) and aren't
/// representable as Nix options.
const SKIP_FILES: &[&str] = &["AdvancedSolarPanel_MTRecipes.cfg", "bees.cfg"];

/// Subdirectories (relative to config/) that are skipped wholesale. Matches
/// the Python pipeline's exclusions.
const SKIP_PREFIXES: &[&[&str]] = &[
    &["RTG", "biomes"],
    &["ThaumcraftMobAspects"],
    &["GTNewHorizons"],
    &["gendustry", "overrides"],
];

/// Known top-level config files that are HOCON despite a non-`.conf` extension.
const KNOWN_HOCON_PATHS: &[&str] = &["OpenComputers.cfg"];

/// Nix reserved keywords that must be quoted when used as attribute keys.
const NIX_KEYWORDS: &[&str] = &[
    "if", "then", "else", "let", "in", "with", "inherit", "rec", "assert", "or", "and", "null",
    "true", "false",
];

#[derive(Debug, Clone, Copy, PartialEq, Eq)]
pub enum Format {
    Forge,        // typed: has B:/I:/D:/F:/S: prefixes
    ForgeUntyped, // untyped key=value with section braces
    Json,
    Xml,
    Hocon,
    Ini,
    Properties,
}

impl Format {
    pub fn kind_str(self) -> &'static str {
        match self {
            Self::Forge => "forge",
            Self::ForgeUntyped => "forge_untyped",
            Self::Json => "json",
            Self::Xml => "xml",
            Self::Hocon => "hocon",
            Self::Ini => "ini",
            Self::Properties => "properties",
        }
    }
}

/// One discovered config file.
struct CfgFile {
    /// Absolute path to the file in the pack.
    path: PathBuf,
    /// Path relative to the pack root, e.g. `config/AE2/AE2.cfg`.
    rel_path: String,
    /// Nix attribute name used inside the parent .nix file.
    opt_name: String,
}

/// Run the generator: discover files, parse each, write per-group .nix files.
pub fn run(pack_root: &Path, output_dir: &Path) -> io::Result<()> {
    let cfg_root = pack_root.join("config");
    if !cfg_root.is_dir() {
        return Err(io::Error::new(
            io::ErrorKind::NotFound,
            format!("config directory not found: {}", cfg_root.display()),
        ));
    }
    fs::create_dir_all(output_dir)?;

    let mut groups = collect(&cfg_root, pack_root)?;
    merge_case_insensitive_groups(&mut groups);

    let mut written = 0usize;
    for (stem, entries) in &groups {
        let out_path = output_dir.join(format!("{stem}.nix"));
        let nix = render_group(entries, &cfg_root);
        fs::write(&out_path, nix)?;
        written += 1;
        eprintln!("WROTE: {} ({} cfg files)", out_path.display(), entries.len());
    }
    eprintln!("\nGenerated {written} .nix files");
    Ok(())
}

// -----------------------------------------------------------------------------
// File discovery & grouping
// -----------------------------------------------------------------------------

/// Walk the config tree, filter, and group files by their .nix stem.
fn collect(cfg_root: &Path, pack_root: &Path) -> io::Result<BTreeMap<String, Vec<CfgFile>>> {
    let mut all = Vec::new();
    walk(cfg_root, &mut all)?;
    all.sort();

    let mut groups: BTreeMap<String, Vec<CfgFile>> = BTreeMap::new();
    for path in all {
        if should_skip(&path, cfg_root) {
            continue;
        }
        let rel = match path.strip_prefix(pack_root) {
            Ok(r) => r,
            Err(_) => continue,
        };
        let parts: Vec<&str> = rel.iter().filter_map(|s| s.to_str()).collect();
        let ext = path.extension().and_then(|e| e.to_str()).unwrap_or("");
        let stem = path.file_stem().and_then(|s| s.to_str()).unwrap_or("");

        let (nix_stem, opt_name) = match parts.len() {
            // Shouldn't happen — config/ entries always have at least 2 parts.
            0 | 1 => continue,
            // config/<file>.ext  →  nix=<stem>, opt=<stem>_<ext>
            2 => (sanitize_stem(stem), format!("{stem}_{ext}")),
            // config/<modDir>/<file>.ext  →  nix=<modDir>, opt=<stem>_<ext>
            3 => (sanitize_stem(parts[1]), format!("{stem}_{ext}")),
            // Deeper: config/<modDir>/<sub>.../<file>.ext
            // nix=<modDir>, opt=<sub>_..._<stem>_<ext>
            _ => {
                let inner: Vec<&str> = parts[2..parts.len() - 1].to_vec();
                let opt = format!("{}_{stem}_{ext}", inner.join("_"));
                (sanitize_stem(parts[1]), opt)
            }
        };

        let rel_str = rel.to_string_lossy().replace('\\', "/");
        groups.entry(nix_stem).or_default().push(CfgFile {
            path,
            rel_path: rel_str,
            opt_name,
        });
    }

    // Sort entries within each group by opt_name for determinism.
    for entries in groups.values_mut() {
        entries.sort_by(|a, b| a.opt_name.cmp(&b.opt_name));
    }
    Ok(groups)
}

fn walk(dir: &Path, out: &mut Vec<PathBuf>) -> io::Result<()> {
    for entry in fs::read_dir(dir)? {
        let entry = entry?;
        let path = entry.path();
        let ty = entry.file_type()?;
        if ty.is_dir() {
            walk(&path, out)?;
        } else if ty.is_file() {
            let ext = path
                .extension()
                .and_then(|e| e.to_str())
                .map(|s| s.to_ascii_lowercase());
            if let Some(ext) = ext {
                if SUPPORTED_EXTENSIONS.iter().any(|e| *e == ext.as_str()) {
                    out.push(path);
                }
            }
        }
    }
    Ok(())
}

fn should_skip(path: &Path, cfg_root: &Path) -> bool {
    if let Some(name) = path.file_name().and_then(|n| n.to_str()) {
        if SKIP_FILES.iter().any(|s| *s == name) {
            return true;
        }
    }
    let rel = match path.strip_prefix(cfg_root) {
        Ok(r) => r,
        Err(_) => return false,
    };
    let parts: Vec<&str> = rel.iter().filter_map(|s| s.to_str()).collect();
    if let Some(first) = parts.first() {
        if SKIP_DIRS.iter().any(|d| *d == *first) {
            return true;
        }
    }
    for prefix in SKIP_PREFIXES {
        if parts.len() >= prefix.len()
            && prefix
                .iter()
                .zip(parts.iter())
                .all(|(a, b)| a == b)
        {
            return true;
        }
    }
    false
}

fn sanitize_stem(s: &str) -> String {
    s.replace('.', "").replace(' ', "")
}

/// Merge groups whose stems differ only in case (macOS case-insensitive FS).
/// Folds the lexicographically-later stem into the earlier one.
fn merge_case_insensitive_groups(groups: &mut BTreeMap<String, Vec<CfgFile>>) {
    let mut by_lower: BTreeMap<String, String> = BTreeMap::new();
    let stems: Vec<String> = groups.keys().cloned().collect();
    for stem in stems {
        let lower = stem.to_lowercase();
        if let Some(canonical) = by_lower.get(&lower).cloned() {
            if let Some(extra) = groups.remove(&stem) {
                groups.entry(canonical.clone()).or_default().extend(extra);
                eprintln!("MERGE (case conflict): {stem} -> {canonical}");
            }
        } else {
            by_lower.insert(lower, stem);
        }
    }
}

// -----------------------------------------------------------------------------
// Format detection
// -----------------------------------------------------------------------------

/// Detect the format of a file standalone (for normalize / one-off use).
/// Matches Python's `detect_file_type` in normalize.py: filename matched
/// against `KNOWN_HOCON_PATHS` (tolerating Nix store hash prefixes like
/// `abc123-OpenComputers.cfg`), then falls back to content heuristics.
pub fn detect_format_for_file(path: &Path, text: &str) -> Format {
    let ext = path
        .extension()
        .and_then(|e| e.to_str())
        .map(|s| s.to_ascii_lowercase());
    match ext.as_deref() {
        Some("json") => return Format::Json,
        Some("xml") => return Format::Xml,
        Some("ini") => return Format::Ini,
        Some("properties") => return Format::Properties,
        _ => {}
    }
    if let Some(name) = path.file_name().and_then(|n| n.to_str()) {
        if KNOWN_HOCON_PATHS
            .iter()
            .any(|p| name == *p || name.ends_with(&format!("-{p}")))
        {
            return Format::Hocon;
        }
    }
    // Forge type prefixes (`B:/I:/D:/F:/S:`) win over the `{`-leading JSON
    // heuristic — lib.nix's forge renderer emits a leading anonymous `{ }`
    // block for empty-string keys, which would otherwise be misdetected as
    // JSON when normalize round-trips it.
    if has_forge_type_prefix(text) {
        return Format::Forge;
    }
    let stripped = text.trim_start();
    if stripped.starts_with('{') || stripped.starts_with('[') {
        return Format::Json;
    }
    if has_ini_section_header(text) {
        return Format::Ini;
    }
    if has_section_brace(text) {
        return Format::ForgeUntyped;
    }
    if has_brace_with_equals(text) {
        return Format::Hocon;
    }
    if has_key_equals(text) {
        return Format::Properties;
    }
    Format::ForgeUntyped
}

pub fn parse_with_detected_format(path: &Path, text: &str) -> Option<Ir> {
    parse_with_format(detect_format_for_file(path, text), text)
}

fn detect_format(path: &Path, text: &str, cfg_root: &Path) -> Format {
    let ext = path
        .extension()
        .and_then(|e| e.to_str())
        .map(|s| s.to_ascii_lowercase());
    match ext.as_deref() {
        Some("json") => return Format::Json,
        Some("xml") => return Format::Xml,
        Some("ini") => return Format::Ini,
        Some("properties") => return Format::Properties,
        _ => {}
    }

    // Known HOCON files at top level of config/.
    if let Some(name) = path.file_name().and_then(|n| n.to_str()) {
        if let Ok(rel) = path.strip_prefix(cfg_root) {
            let depth = rel.iter().count();
            if depth == 1 && KNOWN_HOCON_PATHS.iter().any(|p| *p == name) {
                return Format::Hocon;
            }
        }
    }

    let stripped = text.trim_start();
    if stripped.starts_with('{') || stripped.starts_with('[') {
        // Heuristic: starts JSON-ish. Trust the JSON parser to confirm.
        return Format::Json;
    }

    // Detect Forge by typed prefix.
    if has_forge_type_prefix(text) {
        return Format::Forge;
    }
    // INI section header but no Forge prefixes.
    if has_ini_section_header(text) {
        return Format::Ini;
    }
    // A file with section braces (and no Forge prefixes) is forge_untyped.
    // This must be checked before HOCON since the HOCON-like heuristic
    // matches the same pattern but Python's logic picks forge_untyped first.
    if has_section_brace(text) {
        return Format::ForgeUntyped;
    }
    // Brace-and-equals → HOCON-like.
    if has_brace_with_equals(text) {
        return Format::Hocon;
    }
    if has_key_equals(text) {
        return Format::Properties;
    }
    // Default for ambiguous .cfg/.conf files.
    Format::ForgeUntyped
}

/// True if the file has a section opener — an identifier (possibly quoted,
/// possibly with dots/spaces) followed by `{`, with arbitrary whitespace
/// between them (including newlines). Matches Python's regex
/// `^\s*"?[\w\s.-]+"?\s*\{`.
fn has_section_brace(text: &str) -> bool {
    // Scan for `{` and look backwards through whitespace/newlines for an
    // identifier-shaped token.
    let bytes = text.as_bytes();
    for (i, &b) in bytes.iter().enumerate() {
        if b != b'{' {
            continue;
        }
        // Walk back over whitespace and newlines.
        let mut j = i;
        while j > 0 && bytes[j - 1].is_ascii_whitespace() {
            j -= 1;
        }
        if j == 0 {
            continue;
        }
        // Walk back over identifier-ish chars (word, dot, dash, quote, space).
        let mut k = j;
        while k > 0 {
            let c = bytes[k - 1];
            if c.is_ascii_alphanumeric()
                || c == b'_'
                || c == b'.'
                || c == b'-'
                || c == b'"'
                || c == b' '
                || c == b'\t'
            {
                k -= 1;
            } else {
                break;
            }
        }
        // The "head" must start at the beginning of a line (preceded by
        // newline or start-of-file) and be non-empty.
        let line_start = k == 0 || bytes[k - 1] == b'\n';
        let head = std::str::from_utf8(&bytes[k..j]).unwrap_or("").trim();
        if line_start && !head.is_empty() && !head.contains('=') {
            return true;
        }
    }
    false
}

fn has_forge_type_prefix(text: &str) -> bool {
    for line in text.lines() {
        let trimmed = line.trim_start();
        if trimmed.len() >= 2
            && matches!(
                trimmed.as_bytes()[0],
                b'B' | b'I' | b'D' | b'F' | b'S'
            )
            && trimmed.as_bytes()[1] == b':'
        {
            return true;
        }
    }
    false
}

fn has_ini_section_header(text: &str) -> bool {
    for line in text.lines() {
        let t = line.trim_start();
        if t.starts_with('[') && t.contains(']') {
            return true;
        }
    }
    false
}

fn has_brace_with_equals(text: &str) -> bool {
    let mut saw_brace = false;
    let mut saw_eq = false;
    for line in text.lines() {
        let t = line.trim_start();
        if t.ends_with('{') {
            saw_brace = true;
        }
        if t.contains('=')
            && t.chars().next().map_or(false, |c| c.is_ascii_alphanumeric())
        {
            saw_eq = true;
        }
        if saw_brace && saw_eq {
            return true;
        }
    }
    false
}

/// Matches Python's `^\s*[\w.-]+\s*=`: a line starting with an identifier
/// (word chars, dots, dashes) followed *immediately* by `=` (modulo
/// whitespace). Crucially this rejects lines like `mod:item ... mat="..."`
/// where `=` appears later in the value rather than after the leading key.
fn has_key_equals(text: &str) -> bool {
    for line in text.lines() {
        let t = line.trim_start();
        if t.is_empty() {
            continue;
        }
        // Walk an identifier from the start.
        let id: String = t
            .chars()
            .take_while(|c| c.is_ascii_alphanumeric() || matches!(c, '_' | '.' | '-'))
            .collect();
        if id.is_empty() {
            continue;
        }
        // Skip whitespace after the identifier.
        let rest = t[id.len()..].trim_start();
        if rest.starts_with('=') {
            return true;
        }
    }
    false
}

// -----------------------------------------------------------------------------
// Parsing dispatch
// -----------------------------------------------------------------------------

fn parse_with_format(format: Format, text: &str) -> Option<Ir> {
    let result = match format {
        Format::Forge | Format::ForgeUntyped => forge::ForgeParser::parse(text),
        Format::Json => json::JsonParser::parse(text),
        Format::Xml => xml::XmlParser::parse(text),
        Format::Hocon => hocon::HoconParser::parse(text),
        Format::Ini => ini::IniParser::parse(text),
        Format::Properties => properties::PropertiesParser::parse(text),
    };
    result.ok()
}

// -----------------------------------------------------------------------------
// Nix emission
// -----------------------------------------------------------------------------

fn render_group(entries: &[CfgFile], cfg_root: &Path) -> String {
    let mut out = String::from("{lib, ...}: {\n");
    for entry in entries {
        let text = fs::read_to_string(&entry.path).unwrap_or_default();
        let format = detect_format(&entry.path, &text, cfg_root);
        let ir = parse_with_format(format, &text);
        render_cfg_option(
            &mut out,
            &entry.opt_name,
            &entry.rel_path,
            format,
            ir.as_ref(),
            1,
        );
    }
    out.push_str("}\n");
    out
}

fn render_cfg_option(
    out: &mut String,
    opt_name: &str,
    rel_path: &str,
    format: Format,
    ir: Option<&Ir>,
    base_indent: usize,
) {
    let ind = indent(base_indent);
    let i2 = indent(base_indent + 1);
    let i3 = indent(base_indent + 2);
    let i4 = indent(base_indent + 3);

    let nk = nix_attr_key(opt_name);
    out.push_str(&format!("{ind}{nk} = lib.mkOption {{\n"));
    out.push_str(&format!(
        "{i2}description = {};\n",
        nix_str_lit(&format!("{opt_name} configuration (./{rel_path})"))
    ));
    out.push_str(&format!("{i2}default = {{}};\n"));
    out.push_str(&format!("{i2}type = lib.types.submodule {{\n"));
    out.push_str(&format!("{i2}  options = {{\n"));

    // path/kind metadata
    out.push_str(&format!("{i3}path = lib.mkOption {{\n"));
    out.push_str(&format!("{i4}type = lib.types.str;\n"));
    out.push_str(&format!("{i4}default = {};\n", nix_str_lit(&format!("./{rel_path}"))));
    out.push_str(&format!("{i4}readOnly = true;\n"));
    out.push_str(&format!("{i3}}};\n"));

    out.push_str(&format!("{i3}kind = lib.mkOption {{\n"));
    out.push_str(&format!("{i4}type = lib.types.str;\n"));
    out.push_str(&format!("{i4}default = \"{}\";\n", format.kind_str()));
    out.push_str(&format!("{i4}readOnly = true;\n"));
    out.push_str(&format!("{i3}}};\n"));

    // For XML files, expose the root element name so mkConfigFile can re-emit it.
    if let (Format::Xml, Some(Ir::Node { tag: Some(t), .. })) = (format, ir) {
        out.push_str(&format!("{i3}__root = lib.mkOption {{\n"));
        out.push_str(&format!("{i4}type = lib.types.str;\n"));
        out.push_str(&format!("{i4}default = {};\n", nix_str_lit(t)));
        out.push_str(&format!("{i4}readOnly = true;\n"));
        out.push_str(&format!("{i3}}};\n"));
    }

    if let Some(node) = ir {
        render_ir_as_options(out, node, base_indent + 2);
    }

    out.push_str(&format!("{i2}  }};\n"));
    out.push_str(&format!("{i2}}};\n"));
    out.push_str(&format!("{ind}}};\n"));
}

/// Emit the inner options of a config file or section. `ir` is an `Ir::Node`.
///
/// For Forge/HOCON/etc., the Node carries `attrs` and we emit each entry as
/// its own mkOption.
///
/// For XML, the Node also carries `children` (tagged sub-elements). Children
/// are grouped by tag: a unique tag becomes a single mkOption named after the
/// tag; repeated tags become `<Tag>_0`, `<Tag>_1`, ... mirroring the Python
/// generator's convention.
fn render_ir_as_options(out: &mut String, ir: &Ir, base_indent: usize) {
    let inner = strip_doc(ir);
    if let Ir::Node {
        attrs, children, ..
    } = inner
    {
        // Emit attribute entries (Forge/HOCON/INI/etc. plus XML `@attr` keys).
        if let Some(attrs) = attrs {
            let mut keys: Vec<&String> = attrs.keys().collect();
            keys.sort();
            let mut seen: BTreeSet<&str> = BTreeSet::new();
            for k in keys {
                if !seen.insert(k.as_str()) {
                    continue;
                }
                let val = &attrs[k];
                render_option(out, k, val, base_indent);
            }
        }
        // Emit child elements.
        // XML-style children carry tags → group by tag, suffix repeats with
        // `_N`. JSON-style top-level arrays carry tag-less Node children →
        // emit each as `0`, `1`, ... (matching the Python generator).
        if let Some(children) = children {
            let any_tagged = children
                .iter()
                .any(|c| matches!(strip_doc(c), Ir::Node { tag: Some(_), .. }));
            if any_tagged {
                let mut tag_counts: BTreeMap<&str, usize> = BTreeMap::new();
                for child in children {
                    if let Ir::Node { tag: Some(t), .. } = strip_doc(child) {
                        *tag_counts.entry(t.as_str()).or_insert(0) += 1;
                    }
                }
                let mut tag_idx: BTreeMap<&str, usize> = BTreeMap::new();
                for child in children {
                    if let Ir::Node { tag: Some(t), .. } = strip_doc(child) {
                        let total = tag_counts.get(t.as_str()).copied().unwrap_or(1);
                        let key = if total > 1 {
                            let idx = tag_idx.entry(t.as_str()).or_insert(0);
                            let name = format!("{t}_{idx}");
                            *idx += 1;
                            name
                        } else {
                            t.clone()
                        };
                        render_option(out, &key, child, base_indent);
                    }
                }
            } else {
                for (i, child) in children.iter().enumerate() {
                    render_option(out, &i.to_string(), child, base_indent);
                }
            }
        }
    }
}

/// Emit a single key = lib.mkOption {...} block. Picks the right shape based
/// on the value's kind (scalar, list, submodule, listOf submodule).
fn render_option(out: &mut String, key: &str, value: &Ir, base_indent: usize) {
    let ind = indent(base_indent);
    let i2 = indent(base_indent + 1);
    let nk = nix_attr_key(key);

    let (doc, body) = split_doc(value);
    match body {
        // Section / submodule.
        Ir::Node {
            attrs: Some(_),
            children: None,
            ..
        } => {
            out.push_str(&format!("{ind}{nk} = lib.mkOption {{\n"));
            out.push_str(&format!("{i2}default = {{}};\n"));
            if let Some(d) = &doc {
                out.push_str(&format!("{i2}description = {};\n", nix_str_lit(d)));
            }
            out.push_str(&format!("{i2}type = lib.types.submodule {{\n"));
            out.push_str(&format!("{i2}  options = {{\n"));
            render_ir_as_options(out, body, base_indent + 2);
            out.push_str(&format!("{i2}  }};\n"));
            out.push_str(&format!("{i2}}};\n"));
            out.push_str(&format!("{ind}}};\n"));
        }
        // List.
        Ir::Node {
            attrs: None,
            children: Some(items),
            ..
        } => {
            // XML elements with repeated children should be rendered as a
            // submodule with numbered sub-options, NOT as a `listOf` — even
            // if all the children happen to be tag-less. We distinguish by
            // checking whether children carry tags (XML) vs none (JSON).
            let any_tagged = items.iter().any(|c| {
                matches!(strip_doc(c), Ir::Node { tag: Some(_), .. })
            });
            if any_tagged {
                out.push_str(&format!("{ind}{nk} = lib.mkOption {{\n"));
                out.push_str(&format!("{i2}default = {{}};\n"));
                if let Some(d) = &doc {
                    out.push_str(&format!("{i2}description = {};\n", nix_str_lit(d)));
                }
                out.push_str(&format!("{i2}type = lib.types.submodule {{\n"));
                out.push_str(&format!("{i2}  options = {{\n"));
                render_ir_as_options(out, body, base_indent + 2);
                out.push_str(&format!("{i2}  }};\n"));
                out.push_str(&format!("{i2}}};\n"));
                out.push_str(&format!("{ind}}};\n"));
                return;
            }
            // If all items are tag-less nodes-with-children-only (arrays
            // themselves), this is a 2D array (e.g. JSON arrays of arrays
            // like `model.structure = [[...], [...]]`). Render as a
            // submodule whose keys are "0", "1", ... matching the Python
            // generator's convention.
            let is_nested_array = !items.is_empty()
                && items.iter().all(|c| {
                    matches!(
                        strip_doc(c),
                        Ir::Node { tag: None, attrs: None, children: Some(_), .. }
                    )
                });
            if is_nested_array {
                out.push_str(&format!("{ind}{nk} = lib.mkOption {{\n"));
                out.push_str(&format!("{i2}default = {{}};\n"));
                if let Some(d) = &doc {
                    out.push_str(&format!("{i2}description = {};\n", nix_str_lit(d)));
                }
                out.push_str(&format!("{i2}type = lib.types.submodule {{\n"));
                out.push_str(&format!("{i2}  options = {{\n"));
                for (i, item) in items.iter().enumerate() {
                    let key = i.to_string();
                    render_option(out, &key, item, base_indent + 2);
                }
                out.push_str(&format!("{i2}  }};\n"));
                out.push_str(&format!("{i2}}};\n"));
                out.push_str(&format!("{ind}}};\n"));
                return;
            }
            // If all items are tag-less nodes-with-attrs, it's a JSON array
            // of homogeneous objects → render as listOf submodule.
            let is_obj_list = !items.is_empty()
                && items.iter().all(|c| {
                    matches!(
                        strip_doc(c),
                        Ir::Node { tag: None, attrs: Some(_), children: None, .. }
                    )
                });
            if is_obj_list {
                let schema = merge_object_schema(items);
                out.push_str(&format!("{ind}{nk} = lib.mkOption {{\n"));
                out.push_str(&format!(
                    "{i2}type = lib.types.listOf (lib.types.submodule {{\n"
                ));
                out.push_str(&format!("{i2}  options = {{\n"));
                render_ir_as_options(out, &schema, base_indent + 2);
                out.push_str(&format!("{i2}  }};\n"));
                out.push_str(&format!("{i2}}});\n"));
                out.push_str(&format!("{i2}default = ["));
                if items.is_empty() {
                    out.push_str(" ]");
                } else {
                    out.push('\n');
                    for item in items {
                        render_object_default(out, strip_doc(item), base_indent + 2);
                    }
                    out.push_str(&format!("{i2}]"));
                }
                out.push_str(";\n");
                if let Some(d) = &doc {
                    out.push_str(&format!("{i2}description = {};\n", nix_str_lit(d)));
                }
                out.push_str(&format!("{ind}}};\n"));
            } else {
                let inner_type = list_element_type(items);
                out.push_str(&format!("{ind}{nk} = lib.mkOption {{\n"));
                out.push_str(&format!(
                    "{i2}type = lib.types.listOf {inner_type};\n"
                ));
                out.push_str(&format!("{i2}default = {};\n", nix_list(items, inner_type)));
                if let Some(d) = &doc {
                    out.push_str(&format!("{i2}description = {};\n", nix_str_lit(d)));
                }
                out.push_str(&format!("{ind}}};\n"));
            }
        }
        // Scalar.
        Ir::Bool(_) | Ir::Int(_) | Ir::Real(_) | Ir::Str(_) | Ir::Null => {
            let (ty, def) = scalar_type_and_default(body);
            out.push_str(&format!("{ind}{nk} = lib.mkOption {{\n"));
            out.push_str(&format!("{i2}type = {ty};\n"));
            out.push_str(&format!("{i2}default = {def};\n"));
            if let Some(d) = &doc {
                out.push_str(&format!("{i2}description = {};\n", nix_str_lit(d)));
            }
            out.push_str(&format!("{ind}}};\n"));
        }
        // Empty node — shouldn't happen in practice; render as empty submodule.
        Ir::Node {
            attrs: None,
            children: None,
            ..
        } => {
            out.push_str(&format!("{ind}{nk} = lib.mkOption {{\n"));
            out.push_str(&format!("{i2}default = {{}};\n"));
            out.push_str(&format!(
                "{i2}type = lib.types.submodule {{ options = {{}}; }};\n"
            ));
            out.push_str(&format!("{ind}}};\n"));
        }
        // XML element with both attrs and children: render as a submodule
        // whose options union the `@attr` entries with the child options.
        Ir::Node {
            attrs: Some(_),
            children: Some(_),
            ..
        } => {
            out.push_str(&format!("{ind}{nk} = lib.mkOption {{\n"));
            out.push_str(&format!("{i2}default = {{}};\n"));
            if let Some(d) = &doc {
                out.push_str(&format!("{i2}description = {};\n", nix_str_lit(d)));
            }
            out.push_str(&format!("{i2}type = lib.types.submodule {{\n"));
            out.push_str(&format!("{i2}  options = {{\n"));
            render_ir_as_options(out, body, base_indent + 2);
            out.push_str(&format!("{i2}  }};\n"));
            out.push_str(&format!("{i2}}};\n"));
            out.push_str(&format!("{ind}}};\n"));
        }
        Ir::Documented { .. } => unreachable!("strip_doc above returns non-Documented"),
    }
}

fn strip_doc(ir: &Ir) -> &Ir {
    match ir {
        Ir::Documented { inner, .. } => inner,
        other => other,
    }
}

fn split_doc(ir: &Ir) -> (Option<String>, &Ir) {
    match ir {
        Ir::Documented { doc, inner } => (Some(doc.clone()), inner),
        other => (None, other),
    }
}

fn scalar_type_and_default(ir: &Ir) -> (String, String) {
    match ir {
        Ir::Bool(b) => ("lib.types.bool".into(), b.to_string()),
        Ir::Int(n) => ("lib.types.int".into(), n.to_string()),
        Ir::Real(f) => ("lib.types.float".into(), nix_float(*f)),
        Ir::Str(s) => ("lib.types.str".into(), nix_str_lit(s)),
        Ir::Null => ("lib.types.nullOr lib.types.str".into(), "null".into()),
        _ => ("lib.types.anything".into(), "null".into()),
    }
}

fn list_element_type(items: &[Ir]) -> &'static str {
    let mut bools = 0;
    let mut ints = 0;
    let mut reals = 0;
    let mut others = 0;
    for item in items {
        match strip_doc(item) {
            Ir::Bool(_) => bools += 1,
            Ir::Int(_) => ints += 1,
            Ir::Real(_) => reals += 1,
            _ => others += 1,
        }
    }
    if others > 0 {
        return "lib.types.str";
    }
    if bools > 0 && ints == 0 && reals == 0 {
        return "lib.types.bool";
    }
    // A list of Reals (with possibly some Ints) promotes to float so e.g.
    // `[0.5, 1, 1.5]` renders as a homogeneous float list rather than
    // falling back to string.
    if reals > 0 && bools == 0 {
        return "lib.types.float";
    }
    if ints > 0 && bools == 0 && reals == 0 {
        return "lib.types.int";
    }
    "lib.types.str"
}

fn nix_list(items: &[Ir], inner_type: &str) -> String {
    if items.is_empty() {
        return "[ ]".into();
    }
    let mut parts = Vec::with_capacity(items.len());
    for item in items {
        let v = match strip_doc(item) {
            Ir::Bool(b) => b.to_string(),
            Ir::Int(n) => {
                if inner_type == "lib.types.str" {
                    nix_str_lit(&n.to_string())
                } else if inner_type == "lib.types.float" {
                    // Promote int values to float literals so they fit the
                    // inferred list element type.
                    let s = format!("{}.0", n);
                    if *n < 0 {
                        format!("({s})")
                    } else {
                        s
                    }
                } else if *n < 0 {
                    format!("({n})")
                } else {
                    n.to_string()
                }
            }
            Ir::Real(f) => {
                let s = nix_float(*f);
                if inner_type == "lib.types.str" {
                    nix_str_lit(&s)
                } else if *f < 0.0 {
                    format!("({s})")
                } else {
                    s
                }
            }
            Ir::Str(s) => nix_str_lit(s),
            other => nix_str_lit(&format!("{other:?}")),
        };
        parts.push(v);
    }
    format!("[ {} ]", parts.join(" "))
}

/// Merge keys across items of a homogeneous-object list into a single schema.
/// Each merged entry's value uses the first item's value at that key.
fn merge_object_schema(items: &[Ir]) -> Ir {
    let mut merged: BTreeMap<String, Ir> = BTreeMap::new();
    for item in items {
        if let Ir::Node {
            attrs: Some(a), ..
        } = strip_doc(item)
        {
            for (k, v) in a {
                merged.entry(k.clone()).or_insert_with(|| v.clone());
            }
        }
    }
    Ir::Node {
        tag: None,
        attrs: Some(merged.into_iter().collect()),
        children: None,
    }
}

fn render_object_default(out: &mut String, item: &Ir, base_indent: usize) {
    let ind = indent(base_indent);
    let i2 = indent(base_indent + 1);
    out.push_str(&format!("{ind}{{\n"));
    if let Ir::Node {
        attrs: Some(attrs), ..
    } = item
    {
        let mut keys: Vec<&String> = attrs.keys().collect();
        keys.sort();
        for k in keys {
            let v = strip_doc(&attrs[k]);
            let nk = nix_attr_key(k);
            match v {
                Ir::Node {
                    attrs: Some(_),
                    children: None,
                    ..
                } => {
                    out.push_str(&format!("{i2}{nk} = {{\n"));
                    render_nested_default(out, v, base_indent + 1);
                    out.push_str(&format!("{i2}}};\n"));
                }
                Ir::Node {
                    attrs: None,
                    children: Some(children),
                    ..
                } => {
                    let it = list_element_type(children);
                    out.push_str(&format!("{i2}{nk} = {};\n", nix_list(children, it)));
                }
                _ => {
                    let (_ty, def) = scalar_type_and_default(v);
                    out.push_str(&format!("{i2}{nk} = {def};\n"));
                }
            }
        }
    }
    out.push_str(&format!("{ind}}}\n"));
}

fn render_nested_default(out: &mut String, ir: &Ir, base_indent: usize) {
    let i2 = indent(base_indent + 1);
    if let Ir::Node {
        attrs: Some(attrs), ..
    } = ir
    {
        let mut keys: Vec<&String> = attrs.keys().collect();
        keys.sort();
        for k in keys {
            let v = strip_doc(&attrs[k]);
            let nk = nix_attr_key(k);
            match v {
                Ir::Node {
                    attrs: Some(_),
                    children: None,
                    ..
                } => {
                    out.push_str(&format!("{i2}{nk} = {{\n"));
                    render_nested_default(out, v, base_indent + 1);
                    out.push_str(&format!("{i2}}};\n"));
                }
                Ir::Node {
                    attrs: None,
                    children: Some(children),
                    ..
                } => {
                    let it = list_element_type(children);
                    out.push_str(&format!("{i2}{nk} = {};\n", nix_list(children, it)));
                }
                _ => {
                    let (_ty, def) = scalar_type_and_default(v);
                    out.push_str(&format!("{i2}{nk} = {def};\n"));
                }
            }
        }
    }
}

// -----------------------------------------------------------------------------
// Nix string helpers
// -----------------------------------------------------------------------------

fn indent(level: usize) -> String {
    "  ".repeat(level)
}

fn nix_attr_key(s: &str) -> String {
    let valid_ident = !s.is_empty()
        && s.chars()
            .next()
            .map(|c| c.is_ascii_alphabetic() || c == '_')
            .unwrap_or(false)
        && s.chars()
            .all(|c| c.is_ascii_alphanumeric() || c == '_' || c == '-');
    let is_keyword = NIX_KEYWORDS.iter().any(|k| *k == s);
    if valid_ident && !is_keyword {
        s.to_string()
    } else {
        format!("\"{}\"", escape_nix_string(s))
    }
}

fn nix_str_lit(s: &str) -> String {
    format!("\"{}\"", escape_nix_string(s))
}

fn escape_nix_string(s: &str) -> String {
    s.replace('\\', "\\\\")
        .replace('"', "\\\"")
        .replace("${", "\\${")
}

fn nix_float(f: f64) -> String {
    let s = format!("{f}");
    if !s.contains('.') && !s.contains('e') && !s.contains('E') {
        format!("{s}.0")
    } else {
        s
    }
}
