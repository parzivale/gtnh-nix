use std::path::PathBuf;

use clap::{Parser, Subcommand, ValueEnum};
use gtnh_nix::GTNHParser;

/// Tooling for gtnh-nix: generate and validate Nix option files for GTNH packs.
#[derive(Parser)]
#[command(version, about)]
struct Args {
    #[command(subcommand)]
    command: Command,
}

#[derive(Clone, ValueEnum)]
enum ParserKind {
    Json,
    Forge,
    Hocon,
    Ini,
    Properties,
    Xml,
}

#[derive(Subcommand)]
enum Command {
    /// Generate Nix option files from a GTNH pack's config directory.
    Gen {
        /// Root directory of the GTNH pack
        pack_root: PathBuf,
        /// Output directory for generated .nix files
        output_dir: PathBuf,
    },
    /// Regenerate Nix options for all versions listed in version-list.nix.
    GenAll {
        /// Regenerate even if mods directory already exists
        #[arg(short, long)]
        force: bool,
    },
    /// Compare an original config file against a rendered one structurally.
    Normalize {
        /// Path to the original config file
        original: PathBuf,
        /// Path to the rendered config file
        rendered: PathBuf,
    },
    /// Parse a file using a specific parser and print the IR.
    Parse {
        /// Which parser to use
        #[arg(value_enum)]
        parser: ParserKind,
        /// Path to the file to parse
        file: PathBuf,
    },
}

fn main() {
    let args = Args::parse();

    match args.command {
        Command::Gen {
            pack_root,
            output_dir,
        } => {
            println!(
                "gen: pack_root={} output_dir={}",
                pack_root.display(),
                output_dir.display()
            );
        }
        Command::GenAll { force } => {
            println!("gen-all: force={force}");
        }
        Command::Normalize { original, rendered } => {
            println!(
                "normalize: original={} rendered={}",
                original.display(),
                rendered.display()
            );
        }
        Command::Parse { parser, file } => {
            let input = std::fs::read_to_string(&file).unwrap_or_else(|e| {
                eprintln!("Failed to read {}: {e}", file.display());
                std::process::exit(1);
            });

            let result = match parser {
                ParserKind::Json => gtnh_nix::parsers::json::JsonParser::parse(&input),
                ParserKind::Forge => gtnh_nix::parsers::forge::ForgeParser::parse(&input),
                ParserKind::Hocon => gtnh_nix::parsers::hocon::HoconParser::parse(&input),
                ParserKind::Ini => gtnh_nix::parsers::ini::IniParser::parse(&input),
                ParserKind::Properties => gtnh_nix::parsers::properties::PropertiesParser::parse(&input),
                ParserKind::Xml => gtnh_nix::parsers::xml::XmlParser::parse(&input),
            };

            match result {
                Ok(ir) => println!("{ir:#?}"),
                Err(e) => {
                    eprintln!("{e}");
                    std::process::exit(1);
                }
            }
        }
    }
}
