"""XML config file parser."""

from __future__ import annotations

import xml.etree.ElementTree as ET

from .ast import ConfigAST, Entry, Section, Node, ValueType
from .base import ConfigParser


class XmlParser(ConfigParser):
    """Parser for XML config files.

    Handles XML elements, attributes, and text content.
    Attributes are prefixed with @ to distinguish from child elements.
    Duplicate element tags are numbered (e.g., Drop_0, Drop_1).
    """

    def parse(self, text: str) -> ConfigAST:
        try:
            root = ET.fromstring(text)
            nodes = self._to_nodes(root)
            return ConfigAST(nodes=nodes, root_name=root.tag)
        except ET.ParseError:
            return ConfigAST()

    def _to_nodes(self, element: ET.Element) -> list[Node]:
        """Convert XML element to AST nodes."""
        nodes = []

        # Add attributes as entries (prefixed with @)
        for attr_name, attr_value in element.attrib.items():
            vtype = self.infer_type(attr_value)
            nodes.append(Entry(key=f'@{attr_name}', value=attr_value, type=vtype))

        # Count child element occurrences for duplicate handling
        tag_counts: dict[str, int] = {}
        for child in element:
            tag_counts[child.tag] = tag_counts.get(child.tag, 0) + 1

        # Track current index for each tag
        tag_indices: dict[str, int] = {}

        # Add child elements
        for child in element:
            tag = child.tag

            # Number duplicates: Drop -> Drop_0, Drop_1, etc.
            if tag_counts[tag] > 1:
                idx = tag_indices.get(tag, 0)
                tag_indices[tag] = idx + 1
                unique_tag = f"{tag}_{idx}"
            else:
                unique_tag = tag

            if len(child) > 0 or child.attrib:
                # Has children or attributes - treat as section
                children = self._to_nodes(child)
                nodes.append(Section(name=unique_tag, children=children))
            elif child.text and child.text.strip():
                # Simple text content
                text = child.text.strip()
                vtype = self.infer_type(text)
                nodes.append(Entry(key=unique_tag, value=text, type=vtype))
            else:
                # Empty element
                nodes.append(Entry(key=unique_tag, value='', type=ValueType.STRING))

        return nodes
