"""Base class for config file parsers."""

from __future__ import annotations

from abc import ABC, abstractmethod
from pathlib import Path

from .ast import ConfigAST, Entry, List, Section, Node, ValueType


class ConfigParser(ABC):
    """Abstract base class for config file parsers."""

    @abstractmethod
    def parse(self, text: str) -> ConfigAST:
        """Parse config text into AST.

        Args:
            text: Raw config file content

        Returns:
            ConfigAST containing parsed structure
        """
        pass

    def parse_file(self, path: Path) -> ConfigAST:
        """Parse config file from path."""
        text = path.read_text(errors='replace')
        return self.parse(text)

    @staticmethod
    def infer_type(value: str) -> ValueType:
        """Infer value type from string."""
        if value.lower() in ('true', 'false'):
            return ValueType.BOOL
        try:
            int(value)
            return ValueType.INT
        except ValueError:
            pass
        try:
            float(value)
            return ValueType.FLOAT
        except ValueError:
            pass
        return ValueType.STRING

    @staticmethod
    def infer_type_from_python(value) -> ValueType:
        """Infer value type from Python object."""
        if isinstance(value, bool):
            return ValueType.BOOL
        elif isinstance(value, int):
            return ValueType.INT
        elif isinstance(value, float):
            return ValueType.FLOAT
        return ValueType.STRING

    @staticmethod
    def to_string(value) -> str:
        """Convert Python value to string representation."""
        if isinstance(value, bool):
            return 'true' if value else 'false'
        return str(value)

    def flatten(self, ast: ConfigAST) -> list[tuple[str, str, str]]:
        """Flatten AST to list of (path, type_prefix, value) tuples."""
        entries = []
        self._flatten_nodes(ast.nodes, [], entries)
        return entries

    def _flatten_nodes(self, nodes: list[Node], path: list[str], entries: list):
        """Recursively flatten nodes."""
        for node in nodes:
            if isinstance(node, Entry):
                full_path = '.'.join(path + [node.key])
                type_prefix = f'{node.type.value}:'
                entries.append((full_path, type_prefix, node.value))
            elif isinstance(node, List):
                full_path = '.'.join(path + [node.key])
                type_prefix = f'{node.type.value}:'
                entries.append((full_path, type_prefix, node.values))
            elif isinstance(node, Section):
                self._flatten_nodes(node.children, path + [node.name], entries)
