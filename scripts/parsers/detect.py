"""Format detection and parser factory."""

from __future__ import annotations

import json
import re
from pathlib import Path
from typing import TYPE_CHECKING

from .ast import ConfigAST
from .base import ConfigParser
from .forge import ForgeParser
from .hocon import HoconParser
from .ini import IniParser
from .json_parser import JsonParser
from .properties import PropertiesParser
from .xml_parser import XmlParser

if TYPE_CHECKING:
    pass


# Known HOCON files (direct children of config/)
KNOWN_HOCON_PATHS = {'OpenComputers.cfg'}


def detect_format(filepath: Path, text: str, config_root: Path | None = None) -> str:
    """Detect config file format based on filename and content.

    Args:
        filepath: Path to the config file
        text: File content
        config_root: Root config directory (for HOCON detection)

    Returns:
        One of: 'forge', 'forge_untyped', 'hocon', 'ini', 'json', 'xml', 'properties'
    """
    suffix = filepath.suffix.lower()
    name = filepath.name

    # Check explicit extensions first
    if suffix == '.json':
        return 'json'
    if suffix == '.xml':
        return 'xml'
    if suffix == '.ini':
        return 'ini'
    if suffix == '.properties':
        return 'properties'

    # Check known HOCON files (only direct children of config/)
    if config_root is not None:
        try:
            rel_to_config = filepath.relative_to(config_root)
            # Only match if it's a direct child (no subdirectories)
            if len(rel_to_config.parts) == 1 and name in KNOWN_HOCON_PATHS:
                return 'hocon'
        except ValueError:
            pass

    # Check for JSON content (starts with { or [)
    stripped = text.lstrip()
    if stripped.startswith('{') or stripped.startswith('['):
        try:
            json.loads(text)
            return 'json'
        except json.JSONDecodeError:
            pass

    # Check for INI format: has [section] headers
    if re.search(r'^\s*\[[^\]]+\]', text, re.MULTILINE):
        # But not if it also has Forge-style type prefixes
        if not re.search(r'^\s*[BIDFS]:', text, re.MULTILINE):
            return 'ini'

    # Check for Forge typed format: has type prefixes B:, I:, D:, F:, S:
    if re.search(r'^\s*[BIDFS]:', text, re.MULTILINE):
        return 'forge'

    # Check for Forge untyped format: has section braces
    if re.search(r'^\s*"?[\w\s.-]+"?\s*\{', text, re.MULTILINE):
        return 'forge_untyped'

    # Check for HOCON-like format: has nested braces with key = value
    if re.search(r'^\s*\w+\s*\{', text, re.MULTILINE) and re.search(r'^\s*\w+\s*=', text, re.MULTILINE):
        return 'hocon'

    # Default to properties for simple key=value files
    if re.search(r'^\s*[\w.-]+\s*=', text, re.MULTILINE):
        return 'properties'

    # Last resort: treat as Forge untyped
    return 'forge_untyped'


def get_parser(format_name: str) -> ConfigParser:
    """Get the appropriate parser for a format.

    Args:
        format_name: Format string from detect_format()

    Returns:
        ConfigParser instance for the format
    """
    parsers = {
        'forge': ForgeParser(),
        'forge_untyped': ForgeParser(),
        'hocon': HoconParser(),
        'ini': IniParser(),
        'json': JsonParser(),
        'xml': XmlParser(),
        'properties': PropertiesParser(),
    }
    return parsers.get(format_name, ForgeParser())


def parse_config(filepath: Path, config_root: Path | None = None) -> tuple[ConfigAST, str]:
    """Parse a config file, auto-detecting format.

    Args:
        filepath: Path to the config file
        config_root: Root config directory (for HOCON detection)

    Returns:
        Tuple of (ConfigAST, format_name)
    """
    text = filepath.read_text(errors='replace')
    format_name = detect_format(filepath, text, config_root)
    parser = get_parser(format_name)
    ast = parser.parse(text)
    return ast, format_name
