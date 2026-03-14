"""AST node types for parsed config files."""

from __future__ import annotations

from dataclasses import dataclass, field
from enum import Enum
from typing import Union


class ValueType(Enum):
    """Config value types (matching Forge type prefixes)."""
    BOOL = 'B'
    INT = 'I'
    FLOAT = 'D'
    STRING = 'S'


@dataclass
class Entry:
    """Single key-value pair."""
    key: str
    value: str
    type: ValueType = ValueType.STRING
    description: str = ""


@dataclass
class List:
    """Array of values."""
    key: str
    values: list[str] = field(default_factory=list)
    type: ValueType = ValueType.STRING
    description: str = ""


@dataclass
class Section:
    """Nested block with children."""
    name: str
    children: list[Node] = field(default_factory=list)
    description: str = ""


# Union type for all node types
Node = Union[Entry, List, Section]


@dataclass
class ConfigAST:
    """Root of a parsed config file."""
    nodes: list[Node] = field(default_factory=list)
    root_name: str | None = None  # For XML root element name
