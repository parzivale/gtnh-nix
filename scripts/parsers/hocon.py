"""HOCON config file parser."""

from __future__ import annotations

from pyhocon import ConfigFactory, ConfigTree

from .ast import ConfigAST, Entry, List, Section, Node, ValueType
from .base import ConfigParser


class HoconParser(ConfigParser):
    """Parser for HOCON config files (e.g., OpenComputers).

    HOCON is a superset of JSON used by some mods.
    """

    def parse(self, text: str) -> ConfigAST:
        try:
            config = ConfigFactory.parse_string(text)
            nodes = self._to_nodes(config)
            return ConfigAST(nodes=nodes)
        except Exception:
            return ConfigAST()

    def _to_nodes(self, config) -> list[Node]:
        """Convert HOCON ConfigTree to AST nodes."""
        nodes = []

        if isinstance(config, ConfigTree):
            for key in config.keys():
                value = config[key]
                if isinstance(value, ConfigTree):
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

        elif isinstance(config, list):
            for i, value in enumerate(config):
                key = str(i)
                if isinstance(value, ConfigTree):
                    children = self._to_nodes(value)
                    nodes.append(Section(name=key, children=children))
                elif isinstance(value, list):
                    children = self._to_nodes(value)
                    nodes.append(Section(name=key, children=children))
                else:
                    vtype = self.infer_type_from_python(value)
                    nodes.append(Entry(key=key, value=self.to_string(value), type=vtype))

        return nodes
