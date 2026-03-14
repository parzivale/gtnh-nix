"""JSON config file parser."""

from __future__ import annotations

import json

from .ast import ConfigAST, Entry, List, Section, Node, ValueType
from .base import ConfigParser


class JsonParser(ConfigParser):
    """Parser for JSON config files."""

    def parse(self, text: str) -> ConfigAST:
        try:
            data = json.loads(text)
            nodes = self._to_nodes(data)
            return ConfigAST(nodes=nodes)
        except json.JSONDecodeError:
            return ConfigAST()

    def _to_nodes(self, data) -> list[Node]:
        """Convert JSON data to AST nodes."""
        nodes = []

        if isinstance(data, dict):
            for key, value in data.items():
                if isinstance(value, dict):
                    children = self._to_nodes(value)
                    nodes.append(Section(name=key, children=children))
                elif isinstance(value, list):
                    if value and all(isinstance(x, (str, int, float, bool)) for x in value):
                        vtype = self.infer_type_from_python(value[0]) if value else ValueType.STRING
                        nodes.append(List(key=key, values=[self.to_string(x) for x in value], type=vtype))
                    else:
                        children = self._to_nodes(value)
                        nodes.append(Section(name=key, children=children))
                else:
                    vtype = self.infer_type_from_python(value)
                    nodes.append(Entry(key=key, value=self.to_string(value), type=vtype))

        elif isinstance(data, list):
            for i, value in enumerate(data):
                key = str(i)
                if isinstance(value, dict):
                    children = self._to_nodes(value)
                    nodes.append(Section(name=key, children=children))
                elif isinstance(value, list):
                    children = self._to_nodes(value)
                    nodes.append(Section(name=key, children=children))
                else:
                    vtype = self.infer_type_from_python(value)
                    nodes.append(Entry(key=key, value=self.to_string(value), type=vtype))

        return nodes
