//! chumsky-based parsers for every config format found in a GTNH pack.
//!
//! Each submodule implements [`crate::GTNHParser`] for one format and
//! converts its AST into the unified [`crate::Ir`] tree:
//!
//! | Module                | Format            | Typical files                                              |
//! |-----------------------|-------------------|------------------------------------------------------------|
//! | [`forge`]             | Forge typed/untyped `B:/I:/D:/S:` key=value with `{}` sections | `config/<mod>/*.cfg`               |
//! | [`hocon`]             | HOCON (Human-Optimized Config Object Notation) | `config/OpenComputers.cfg`, `*.conf`              |
//! | [`ini`]               | INI sectioned key=value                        | Older `IC2.ini`                                    |
//! | [`json`]              | RFC 8259 JSON                                  | Quest data, recipe overrides, `*.json`             |
//! | [`properties`]        | Java `.properties`                             | `server.properties`, `forge.cfg`                   |
//! | [`xml`]               | XML 1.0 subset (ElementTree-style)            | `*.xml`                                            |
//!
//! Format detection is centralised in
//! [`crate::nix_gen::detect_format_for_file`], not in the individual
//! parsers. Each parser will happily try to consume any input it's given;
//! the dispatcher is responsible for picking the right one.

pub mod forge;
pub mod hocon;
pub mod ini;
pub mod json;
pub mod properties;
pub mod xml;
