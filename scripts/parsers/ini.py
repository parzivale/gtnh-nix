"""INI config file parser."""

from __future__ import annotations

import configparser

from .ast import ConfigAST, Entry, Section, Node, ValueType
from .base import ConfigParser


class IniParser(ConfigParser):
    """Parser for INI config files (e.g., IC2.ini).

    Standard INI format with [section] headers and key=value pairs.
    """

    def parse(self, text: str) -> ConfigAST:
        try:
            config = configparser.ConfigParser()
            config.optionxform = str  # Preserve key case
            config.read_string(text)
            nodes = self._to_nodes(config)
            return ConfigAST(nodes=nodes)
        except Exception:
            return ConfigAST()

    def _to_nodes(self, config: configparser.ConfigParser) -> list[Node]:
        """Convert ConfigParser to AST nodes."""
        nodes = []

        # Include DEFAULT section if it has items
        if config.defaults():
            children = []
            for key, value in config.defaults().items():
                vtype = self._infer_ini_type(value)
                children.append(Entry(key=key, value=value, type=vtype))
            if children:
                nodes.append(Section(name='DEFAULT', children=children))

        # Regular sections
        for section in config.sections():
            children = []
            for key, value in config.items(section):
                # Skip keys that are in defaults (they're inherited)
                if key in config.defaults():
                    continue
                vtype = self._infer_ini_type(value)
                children.append(Entry(key=key, value=value, type=vtype))
            nodes.append(Section(name=section, children=children))

        return nodes

    def _infer_ini_type(self, value: str) -> ValueType:
        """Infer value type from INI string value.

        Handles INI-specific boolean values like yes/no, on/off.
        """
        if value.lower() in ('true', 'false', 'yes', 'no', 'on', 'off'):
            return ValueType.BOOL
        return self.infer_type(value)
