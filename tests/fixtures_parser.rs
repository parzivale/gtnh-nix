//! Integration tests that load real-looking fixture files and verify the
//! parser output's overall structure: key counts, doc placement, nesting,
//! and type inference.

use std::collections::HashMap;
use std::fs;
use std::path::Path;

use gtnh_nix::parsers::forge::ForgeParser;
use gtnh_nix::parsers::hocon::HoconParser;
use gtnh_nix::parsers::ini::IniParser;
use gtnh_nix::parsers::properties::PropertiesParser;
use gtnh_nix::parsers::xml::XmlParser;
use gtnh_nix::{GTNHParser, Ir};

fn load(name: &str) -> String {
    let path = Path::new(env!("CARGO_MANIFEST_DIR"))
        .join("tests")
        .join("fixtures")
        .join(name);
    fs::read_to_string(&path)
        .unwrap_or_else(|e| panic!("read {}: {e}", path.display()))
}

fn attrs(ir: &Ir) -> &HashMap<String, Ir> {
    match ir {
        Ir::Node { attrs: Some(a), .. } => a,
        Ir::Documented { inner, .. } => attrs(inner),
        other => panic!("expected Node with attrs, got {:?}", other),
    }
}

fn undoc(ir: &Ir) -> &Ir {
    match ir {
        Ir::Documented { inner, .. } => inner,
        other => other,
    }
}

fn doc_of(ir: &Ir) -> Option<&str> {
    match ir {
        Ir::Documented { doc, .. } => Some(doc),
        _ => None,
    }
}

// ---- Forge ----

#[test]
fn forge_sample_parses() {
    let ir = ForgeParser::parse(&load("forge_sample.cfg")).expect("forge parse failed");
    let root = attrs(&ir);

    // Two top-level sections, each carrying a doc from the file-level comment.
    assert_eq!(root.len(), 2);
    assert!(root.contains_key("general"));
    assert!(root.contains_key("advanced"));

    // general.enableFeature: documented bool
    let general = attrs(root.get("general").expect("general"));
    let enable = general.get("enableFeature").expect("enableFeature");
    assert_eq!(
        doc_of(enable),
        Some("Enable the example feature.\nDefault: true")
    );
    assert_eq!(undoc(enable), &Ir::Bool(true));

    // tickInterval: documented int
    let tick = general.get("tickInterval").expect("tickInterval");
    assert_eq!(
        doc_of(tick),
        Some("Tick interval in ticks.\nMin: 1, Max: 1000")
    );
    assert_eq!(undoc(tick), &Ir::Int(20));

    // damageMultiplier: documented real
    let dmg = general.get("damageMultiplier").expect("damageMultiplier");
    assert_eq!(doc_of(dmg), Some("Damage multiplier."));
    assert_eq!(undoc(dmg), &Ir::Real(1.5));

    // welcomeMessage: undocumented string. The source has surrounding
    // quotes; the parser keeps them in the IR (matching the Python pipeline)
    // so the renderer emits them back verbatim.
    let welcome = general.get("welcomeMessage").expect("welcomeMessage");
    assert!(doc_of(welcome).is_none());
    assert_eq!(welcome, &Ir::Str("\"Hello, World!\"".into()));

    // advanced.materials: list of three strings
    let advanced = attrs(root.get("advanced").expect("advanced"));
    let materials = advanced.get("materials").expect("materials");
    match undoc(materials) {
        Ir::Node {
            children: Some(c), ..
        } => {
            assert_eq!(c.len(), 3);
            assert_eq!(c[0], Ir::Str("iron".into()));
            assert_eq!(c[1], Ir::Str("gold".into()));
            assert_eq!(c[2], Ir::Str("diamond".into()));
        }
        other => panic!("expected list node, got {:?}", other),
    }

    // Nested section preserved.
    let nested = attrs(advanced.get("nested").expect("nested"));
    assert_eq!(nested.get("debug"), Some(&Ir::Bool(false)));
}

// ---- HOCON ----

#[test]
fn hocon_sample_parses() {
    let ir = HoconParser::parse(&load("hocon_sample.conf")).expect("hocon parse failed");
    let root = attrs(&ir);

    assert!(root.contains_key("computer"));
    assert!(root.contains_key("gpu"));
    assert!(root.contains_key("network"));

    // CPU section is documented at the section level. The file-leading comment
    // is separated by a blank line, so it does NOT attach to `computer`.
    let computer = root.get("computer").expect("computer");
    assert_eq!(doc_of(computer), Some("CPU configuration"));
    let computer_attrs = attrs(computer);

    // cpuSpeed: documented int
    let cpu_speed = computer_attrs.get("cpuSpeed").expect("cpuSpeed");
    assert_eq!(doc_of(cpu_speed), Some("How fast the CPU runs (hz)"));
    assert_eq!(undoc(cpu_speed), &Ir::Int(1000));

    // threaded: documented bool
    let threaded = computer_attrs.get("threaded").expect("threaded");
    assert_eq!(doc_of(threaded), Some("Allow multi-threaded execution"));
    assert_eq!(undoc(threaded), &Ir::Bool(true));

    // GPU array: maxResolution = [ 160, 50 ]
    let gpu_attrs = attrs(root.get("gpu").expect("gpu"));
    let max_res = gpu_attrs.get("maxResolution").expect("maxResolution");
    match undoc(max_res) {
        Ir::Node {
            children: Some(c), ..
        } => {
            assert_eq!(c, &vec![Ir::Int(160), Ir::Int(50)]);
        }
        other => panic!("expected array node, got {:?}", other),
    }

    // Network section: // comment + both `=` and `:` separators
    let network = root.get("network").expect("network");
    assert_eq!(
        doc_of(network),
        Some("Networking section uses // comments")
    );
    let network_attrs = attrs(network);
    assert_eq!(undoc(network_attrs.get("enabled").unwrap()), &Ir::Bool(true));
    assert_eq!(undoc(network_attrs.get("port").unwrap()), &Ir::Int(25565));
}

// ---- INI ----

#[test]
fn ini_sample_parses() {
    let ir = IniParser::parse(&load("ini_sample.ini")).expect("ini parse failed");
    let root = attrs(&ir);

    // Three explicit sections + maybe a "default" if leading-comment-before-section
    // generated one. Inspect whichever sections we got.
    for required in ["general", "balance", "machines"] {
        assert!(root.contains_key(required), "section {required} missing");
    }

    let general = attrs(root.get("general").expect("general"));
    // The semicolon comment attaches as doc on debug.
    let debug = general.get("debug").expect("debug");
    assert_eq!(doc_of(debug), Some("This is a semicolon comment"));
    assert_eq!(undoc(debug), &Ir::Bool(false));
    assert_eq!(general.get("worldGen"), Some(&Ir::Bool(true)));

    let balance = attrs(root.get("balance").expect("balance"));
    let ept = balance.get("energyPerTick").expect("energyPerTick");
    assert_eq!(doc_of(ept), Some("Energy values"));
    assert_eq!(undoc(ept), &Ir::Int(128));
    assert_eq!(balance.get("maxEnergy"), Some(&Ir::Int(10000)));

    let machines = attrs(root.get("machines").expect("machines"));
    assert_eq!(machines.get("macerator"), Some(&Ir::Bool(true))); // "on"
    assert_eq!(machines.get("extractor"), Some(&Ir::Bool(false))); // "off"
}

// ---- Properties ----

#[test]
fn properties_sample_parses() {
    let ir = PropertiesParser::parse(&load("properties_sample.properties"))
        .expect("properties parse failed");
    let a = attrs(&ir);

    assert_eq!(undoc(a.get("server-port").unwrap()), &Ir::Int(25565));
    assert_eq!(undoc(a.get("max-players").unwrap()), &Ir::Int(20));

    // `!` comments are doc comments in .properties
    let difficulty = a.get("difficulty").expect("difficulty");
    assert_eq!(
        doc_of(difficulty),
        Some("Difficulty: 0 peaceful, 1 easy, 2 normal, 3 hard")
    );
    assert_eq!(undoc(difficulty), &Ir::Int(2));

    assert_eq!(undoc(a.get("online-mode").unwrap()), &Ir::Bool(true));
    assert_eq!(undoc(a.get("pvp").unwrap()), &Ir::Bool(false));

    assert_eq!(
        undoc(a.get("motd").unwrap()),
        &Ir::Str("A Minecraft Server".into())
    );
    assert_eq!(undoc(a.get("level-name").unwrap()), &Ir::Str("world".into()));

    // Colon separator
    assert_eq!(
        undoc(a.get("level-type").unwrap()),
        &Ir::Str("DEFAULT".into())
    );
}

// ---- XML ----

#[test]
fn xml_sample_parses() {
    let ir = XmlParser::parse(&load("xml_sample.xml")).expect("xml parse failed");
    let (tag, _, children) = match &ir {
        Ir::Node { tag, attrs, children } => (tag, attrs, children),
        other => panic!("expected Node, got {:?}", other),
    };
    assert_eq!(tag.as_deref(), Some("config"));
    let children = children.as_ref().expect("children");

    // Three top-level children: database (documented), logging (documented), empty.
    assert_eq!(children.len(), 3);

    // Child 0: documented <database>
    match &children[0] {
        Ir::Documented { doc, inner } => {
            assert_eq!(doc, "Database section");
            let inner_attrs = attrs(inner);
            assert_eq!(
                inner_attrs.get("@type"),
                Some(&Ir::Str("sqlite".into()))
            );
        }
        other => panic!("expected Documented <database>, got {:?}", other),
    }

    // Inside database: host, port, enabled
    let db_children = match undoc(&children[0]) {
        Ir::Node {
            children: Some(c), ..
        } => c,
        other => panic!("expected database with children, got {:?}", other),
    };
    assert_eq!(db_children.len(), 3);

    // <host>localhost</host> — inferred string
    let host_text = match &db_children[0] {
        Ir::Node {
            children: Some(c), ..
        } => &c[0],
        other => panic!("expected host node, got {:?}", other),
    };
    assert_eq!(host_text, &Ir::Str("localhost".into()));

    // <port>5432</port> — inferred int
    let port_text = match &db_children[1] {
        Ir::Node {
            children: Some(c), ..
        } => &c[0],
        other => panic!("expected port node, got {:?}", other),
    };
    assert_eq!(port_text, &Ir::Int(5432));

    // <enabled>true</enabled> — inferred bool
    let enabled_text = match &db_children[2] {
        Ir::Node {
            children: Some(c), ..
        } => &c[0],
        other => panic!("expected enabled node, got {:?}", other),
    };
    assert_eq!(enabled_text, &Ir::Bool(true));

    // Child 1: documented <logging>, containing a documented <file> inside.
    match &children[1] {
        Ir::Documented { doc, inner } => {
            assert_eq!(doc, "Logging configuration");
            let log_children = match inner.as_ref() {
                Ir::Node {
                    children: Some(c), ..
                } => c,
                other => panic!("expected logging children, got {:?}", other),
            };
            // <level>INFO</level>, then a documented <file>
            assert_eq!(log_children.len(), 2);
            match &log_children[1] {
                Ir::Documented { doc, inner } => {
                    assert_eq!(doc, "File output settings");
                    let file_attrs = attrs(inner);
                    assert_eq!(
                        file_attrs.get("@path"),
                        Some(&Ir::Str("/var/log/app.log".into()))
                    );
                }
                other => panic!("expected Documented <file>, got {:?}", other),
            }
        }
        other => panic!("expected Documented <logging>, got {:?}", other),
    }

    // Child 2: self-closing <empty />
    match &children[2] {
        Ir::Node {
            tag: Some(t),
            children: None,
            attrs: None,
        } => assert_eq!(t, "empty"),
        other => panic!("expected self-closing empty, got {:?}", other),
    }
}
