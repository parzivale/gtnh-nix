"""Java properties config file parser."""

from __future__ import annotations

import re

from .ast import ConfigAST, Entry, Node
from .base import ConfigParser


class PropertiesParser(ConfigParser):
    """Parser for Java properties-style config files.

    Simple key=value or key:value format with # or ! comments.
    """

    def parse(self, text: str) -> ConfigAST:
        nodes = self._parse_properties(text)
        return ConfigAST(nodes=nodes)

    def _parse_properties(self, text: str) -> list[Node]:
        """Parse properties file content."""
        nodes = []

        for line in text.splitlines():
            line = line.strip()

            # Skip comments and empty lines
            if not line or line.startswith('#') or line.startswith('!'):
                continue

            # Handle key=value or key:value
            match = re.match(r'^([^=:]+)[=:](.*)$', line)
            if match:
                key = match.group(1).strip()
                value = match.group(2).strip()
                vtype = self.infer_type(value)
                nodes.append(Entry(key=key, value=value, type=vtype))

        return nodes
