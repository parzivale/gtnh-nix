"""Config file parsers package.

This package provides parsers for various config file formats used by
Minecraft mods, converting them to a common AST representation.

Supported formats:
- Forge: Type-prefixed (B:/I:/D:/S:) key=value with sections
- Forge Untyped: Same without type prefixes
- HOCON: JSON-like (OpenComputers)
- INI: Sectioned key=value (IC2.ini)
- JSON: Standard JSON format
- XML: Standard XML format
- Properties: Java properties files
"""

from .ast import ConfigAST, Entry, List, Section, Node, ValueType
from .base import ConfigParser
from .detect import detect_format, get_parser, parse_config, KNOWN_HOCON_PATHS
from .forge import ForgeParser
from .hocon import HoconParser
from .ini import IniParser
from .json_parser import JsonParser
from .properties import PropertiesParser
from .xml_parser import XmlParser

__all__ = [
    # AST types
    'ConfigAST',
    'Entry',
    'List',
    'Section',
    'Node',
    'ValueType',
    # Base class
    'ConfigParser',
    # Parsers
    'ForgeParser',
    'HoconParser',
    'IniParser',
    'JsonParser',
    'PropertiesParser',
    'XmlParser',
    # Detection and factory
    'detect_format',
    'get_parser',
    'parse_config',
    'KNOWN_HOCON_PATHS',
]
