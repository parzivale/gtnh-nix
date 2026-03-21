"""JSON config file parser."""

from __future__ import annotations

import json

from .ast import ConfigAST, Entry, List, ObjectList, Section, Node, ValueType
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

    def _is_array_of_objects(self, value: list) -> bool:
        """Check if a list is an array of objects (dicts)."""
        return bool(value) and all(isinstance(x, dict) for x in value)

    def _get_type_signature(self, value) -> str:
        """Get a type signature for a value to detect conflicts."""
        if isinstance(value, dict):
            return 'object'
        elif isinstance(value, list):
            if not value:
                return 'list_empty'
            elif all(isinstance(x, dict) for x in value):
                return 'list_object'
            else:
                return 'list_primitive'
        elif isinstance(value, bool):
            return 'bool'
        elif isinstance(value, int):
            return 'int'
        elif isinstance(value, float):
            return 'float'
        else:
            return 'string'

    def _merge_object_schemas(self, objects: list[dict]) -> list[Node]:
        """Merge the schemas of multiple objects into a unified schema.

        For each key that appears in any object, create a node with the
        appropriate type. If types differ across objects, mark as 'mixed'.
        """
        merged = {}
        type_sigs = {}

        for obj in objects:
            for key, value in obj.items():
                sig = self._get_type_signature(value)
                if key not in merged:
                    merged[key] = value
                    type_sigs[key] = sig
                elif type_sigs[key] != sig:
                    # Type conflict - mark as mixed
                    type_sigs[key] = 'mixed'

        # For mixed types, use None to signal the generator to use lib.types.anything
        for key, sig in type_sigs.items():
            if sig == 'mixed':
                merged[key] = None  # Special marker for mixed types

        return self._to_nodes_with_mixed(merged, type_sigs)

    def _to_nodes_with_mixed(self, data: dict, type_sigs: dict) -> list[Node]:
        """Convert merged data to nodes, handling mixed types."""
        nodes = []

        for key, value in data.items():
            if type_sigs.get(key) == 'mixed':
                # Mixed type - use Entry with special marker
                nodes.append(Entry(key=key, value='__MIXED_TYPE__', type=ValueType.STRING))
            elif isinstance(value, dict):
                children = self._to_nodes(value)
                nodes.append(Section(name=key, children=children))
            elif isinstance(value, list):
                if not value:
                    nodes.append(List(key=key, values=[], type=ValueType.STRING))
                elif all(isinstance(x, (str, int, float, bool, type(None))) for x in value):
                    non_none = [x for x in value if x is not None]
                    vtype = self.infer_type_from_python(non_none[0]) if non_none else ValueType.STRING
                    nodes.append(List(key=key, values=[self.to_string(x) for x in value], type=vtype))
                elif self._is_array_of_objects(value):
                    schema = self._merge_object_schemas(value)
                    items = [self._to_nodes(obj) for obj in value]
                    nodes.append(ObjectList(key=key, schema=schema, items=items))
                else:
                    children = self._to_nodes(value)
                    nodes.append(Section(name=key, children=children))
            else:
                vtype = self.infer_type_from_python(value)
                nodes.append(Entry(key=key, value=self.to_string(value), type=vtype))

        return nodes

    def _to_nodes(self, data) -> list[Node]:
        """Convert JSON data to AST nodes."""
        nodes = []

        if isinstance(data, dict):
            for key, value in data.items():
                if isinstance(value, dict):
                    children = self._to_nodes(value)
                    nodes.append(Section(name=key, children=children))
                elif isinstance(value, list):
                    if not value:
                        # Empty list - default to string list
                        nodes.append(List(key=key, values=[], type=ValueType.STRING))
                    elif all(isinstance(x, (str, int, float, bool, type(None))) for x in value):
                        # List of primitives
                        non_none = [x for x in value if x is not None]
                        vtype = self.infer_type_from_python(non_none[0]) if non_none else ValueType.STRING
                        nodes.append(List(key=key, values=[self.to_string(x) for x in value], type=vtype))
                    elif self._is_array_of_objects(value):
                        # Array of objects - create ObjectList
                        schema = self._merge_object_schemas(value)
                        items = [self._to_nodes(obj) for obj in value]
                        nodes.append(ObjectList(key=key, schema=schema, items=items))
                    else:
                        # Mixed array or array of arrays - treat as section with numeric keys
                        children = self._to_nodes(value)
                        nodes.append(Section(name=key, children=children))
                else:
                    vtype = self.infer_type_from_python(value)
                    nodes.append(Entry(key=key, value=self.to_string(value), type=vtype))

        elif isinstance(data, list):
            # Top-level list - convert to nodes with numeric keys
            # This handles the case when _to_nodes is called on an array directly
            for i, value in enumerate(data):
                key = str(i)
                if isinstance(value, dict):
                    children = self._to_nodes(value)
                    nodes.append(Section(name=key, children=children))
                elif isinstance(value, list):
                    if not value:
                        nodes.append(List(key=key, values=[], type=ValueType.STRING))
                    elif all(isinstance(x, (str, int, float, bool, type(None))) for x in value):
                        non_none = [x for x in value if x is not None]
                        vtype = self.infer_type_from_python(non_none[0]) if non_none else ValueType.STRING
                        nodes.append(List(key=key, values=[self.to_string(x) for x in value], type=vtype))
                    elif self._is_array_of_objects(value):
                        schema = self._merge_object_schemas(value)
                        items = [self._to_nodes(obj) for obj in value]
                        nodes.append(ObjectList(key=key, schema=schema, items=items))
                    else:
                        children = self._to_nodes(value)
                        nodes.append(Section(name=key, children=children))
                else:
                    vtype = self.infer_type_from_python(value)
                    nodes.append(Entry(key=key, value=self.to_string(value), type=vtype))

        return nodes
