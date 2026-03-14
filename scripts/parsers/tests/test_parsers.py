"""Tests for config file parsers."""

import sys
from pathlib import Path

# Support both development (scripts.parsers) and direct (parsers) contexts
_parsers_dir = Path(__file__).parent.parent.parent
if str(_parsers_dir) not in sys.path:
    sys.path.insert(0, str(_parsers_dir))

import pytest

from parsers import (
    ForgeParser,
    JsonParser,
    XmlParser,
    HoconParser,
    IniParser,
    PropertiesParser,
    detect_format,
    get_parser,
)
from parsers.ast import Entry, List, Section, ValueType, ConfigAST


class TestForgeParser:
    """Tests for ForgeParser."""

    def test_empty_input(self):
        parser = ForgeParser()
        ast = parser.parse("")
        assert ast.nodes == []

    def test_simple_entry(self):
        parser = ForgeParser()
        ast = parser.parse("B:enabled=true")
        assert len(ast.nodes) == 1
        assert isinstance(ast.nodes[0], Entry)
        assert ast.nodes[0].key == "enabled"
        assert ast.nodes[0].value == "true"
        assert ast.nodes[0].type == ValueType.BOOL

    def test_typed_entries(self):
        parser = ForgeParser()
        ast = parser.parse("""
B:boolVal=false
I:intVal=42
D:floatVal=3.14
S:strVal=hello
""")
        assert len(ast.nodes) == 4

        assert ast.nodes[0].key == "boolVal"
        assert ast.nodes[0].type == ValueType.BOOL

        assert ast.nodes[1].key == "intVal"
        assert ast.nodes[1].type == ValueType.INT

        assert ast.nodes[2].key == "floatVal"
        assert ast.nodes[2].type == ValueType.FLOAT

        assert ast.nodes[3].key == "strVal"
        assert ast.nodes[3].type == ValueType.STRING

    def test_section(self):
        parser = ForgeParser()
        ast = parser.parse("""
general {
    B:enabled=true
    I:count=10
}
""")
        assert len(ast.nodes) == 1
        section = ast.nodes[0]
        assert isinstance(section, Section)
        assert section.name == "general"
        assert len(section.children) == 2

    def test_quoted_section_name(self):
        parser = ForgeParser()
        ast = parser.parse("""
"section with spaces" {
    B:option=true
}
""")
        assert len(ast.nodes) == 1
        assert ast.nodes[0].name == "section with spaces"

    def test_nested_sections(self):
        parser = ForgeParser()
        ast = parser.parse("""
outer {
    inner {
        B:deep=true
    }
}
""")
        assert len(ast.nodes) == 1
        outer = ast.nodes[0]
        assert outer.name == "outer"
        assert len(outer.children) == 1
        inner = outer.children[0]
        assert inner.name == "inner"
        assert len(inner.children) == 1
        assert inner.children[0].key == "deep"

    def test_list(self):
        parser = ForgeParser()
        ast = parser.parse("""
S:items <
    apple
    banana
    cherry
>
""")
        assert len(ast.nodes) == 1
        lst = ast.nodes[0]
        assert isinstance(lst, List)
        assert lst.key == "items"
        assert lst.values == ["apple", "banana", "cherry"]
        assert lst.type == ValueType.STRING

    def test_int_list(self):
        parser = ForgeParser()
        ast = parser.parse("""
I:numbers <
    1
    2
    3
>
""")
        assert len(ast.nodes) == 1
        lst = ast.nodes[0]
        assert lst.type == ValueType.INT
        assert lst.values == ["1", "2", "3"]

    def test_comments(self):
        parser = ForgeParser()
        ast = parser.parse("""
# This is a comment
B:option=true
""")
        assert len(ast.nodes) == 1
        assert ast.nodes[0].key == "option"

    def test_comment_as_description(self):
        parser = ForgeParser()
        ast = parser.parse("""
# Enable the feature
B:enabled=true
""")
        assert ast.nodes[0].description == "Enable the feature"

    def test_separator_comments_ignored(self):
        parser = ForgeParser()
        ast = parser.parse("""
# ##################
# Real description
# ##################
B:option=true
""")
        assert ast.nodes[0].description == "Real description"

    def test_untyped_entry(self):
        parser = ForgeParser()
        ast = parser.parse("key=value")
        assert len(ast.nodes) == 1
        assert ast.nodes[0].key == "key"
        assert ast.nodes[0].value == "value"
        assert ast.nodes[0].type == ValueType.STRING

    def test_quoted_key(self):
        parser = ForgeParser()
        ast = parser.parse('B:"key with spaces"=true')
        assert ast.nodes[0].key == "key with spaces"

    def test_multiline_section_header(self):
        parser = ForgeParser()
        ast = parser.parse("""
sectionname
{
    B:option=true
}
""")
        assert len(ast.nodes) == 1
        assert ast.nodes[0].name == "sectionname"


class TestJsonParser:
    """Tests for JsonParser."""

    def test_empty_object(self):
        parser = JsonParser()
        ast = parser.parse("{}")
        assert ast.nodes == []

    def test_simple_values(self):
        parser = JsonParser()
        ast = parser.parse('{"bool": true, "int": 42, "float": 3.14, "str": "hello"}')
        assert len(ast.nodes) == 4

        by_key = {n.key: n for n in ast.nodes}
        assert by_key["bool"].type == ValueType.BOOL
        assert by_key["bool"].value == "true"
        assert by_key["int"].type == ValueType.INT
        assert by_key["int"].value == "42"
        assert by_key["float"].type == ValueType.FLOAT
        assert by_key["str"].type == ValueType.STRING

    def test_nested_object(self):
        parser = JsonParser()
        ast = parser.parse('{"outer": {"inner": true}}')
        assert len(ast.nodes) == 1
        assert isinstance(ast.nodes[0], Section)
        assert ast.nodes[0].name == "outer"
        assert len(ast.nodes[0].children) == 1
        assert ast.nodes[0].children[0].key == "inner"

    def test_array_of_scalars(self):
        parser = JsonParser()
        ast = parser.parse('{"items": [1, 2, 3]}')
        assert len(ast.nodes) == 1
        lst = ast.nodes[0]
        assert isinstance(lst, List)
        assert lst.values == ["1", "2", "3"]
        assert lst.type == ValueType.INT

    def test_array_of_objects(self):
        parser = JsonParser()
        ast = parser.parse('{"items": [{"a": 1}, {"b": 2}]}')
        assert len(ast.nodes) == 1
        section = ast.nodes[0]
        assert isinstance(section, Section)
        assert len(section.children) == 2

    def test_invalid_json(self):
        parser = JsonParser()
        ast = parser.parse("not valid json")
        assert ast.nodes == []


class TestXmlParser:
    """Tests for XmlParser."""

    def test_simple_element(self):
        parser = XmlParser()
        ast = parser.parse("<root><item>value</item></root>")
        assert ast.root_name == "root"
        assert len(ast.nodes) == 1
        assert ast.nodes[0].key == "item"
        assert ast.nodes[0].value == "value"

    def test_attributes(self):
        parser = XmlParser()
        ast = parser.parse('<root attr="value"/>')
        assert ast.root_name == "root"
        assert len(ast.nodes) == 1
        assert ast.nodes[0].key == "@attr"
        assert ast.nodes[0].value == "value"

    def test_nested_elements(self):
        parser = XmlParser()
        ast = parser.parse("<root><parent><child>value</child></parent></root>")
        assert len(ast.nodes) == 1
        parent = ast.nodes[0]
        assert isinstance(parent, Section)
        assert parent.name == "parent"
        assert len(parent.children) == 1
        assert parent.children[0].key == "child"

    def test_duplicate_elements(self):
        parser = XmlParser()
        ast = parser.parse("<root><item>a</item><item>b</item></root>")
        assert len(ast.nodes) == 2
        assert ast.nodes[0].key == "item_0"
        assert ast.nodes[1].key == "item_1"

    def test_type_inference(self):
        parser = XmlParser()
        ast = parser.parse("<root><bool>true</bool><int>42</int><float>3.14</float></root>")
        by_key = {n.key: n for n in ast.nodes}
        assert by_key["bool"].type == ValueType.BOOL
        assert by_key["int"].type == ValueType.INT
        assert by_key["float"].type == ValueType.FLOAT

    def test_invalid_xml(self):
        parser = XmlParser()
        ast = parser.parse("<invalid>")
        assert ast.nodes == []


class TestHoconParser:
    """Tests for HoconParser."""

    def test_simple_values(self):
        parser = HoconParser()
        ast = parser.parse("""
enabled = true
count = 42
name = "test"
""")
        assert len(ast.nodes) == 3
        by_key = {n.key: n for n in ast.nodes}
        assert by_key["enabled"].type == ValueType.BOOL
        assert by_key["count"].type == ValueType.INT
        assert by_key["name"].type == ValueType.STRING

    def test_nested_config(self):
        parser = HoconParser()
        ast = parser.parse("""
outer {
    inner {
        value = true
    }
}
""")
        assert len(ast.nodes) == 1
        outer = ast.nodes[0]
        assert isinstance(outer, Section)
        assert outer.name == "outer"

    def test_list(self):
        parser = HoconParser()
        ast = parser.parse('items = [1, 2, 3]')
        assert len(ast.nodes) == 1
        lst = ast.nodes[0]
        assert isinstance(lst, List)
        assert lst.values == ["1", "2", "3"]

    def test_invalid_hocon(self):
        parser = HoconParser()
        ast = parser.parse("{{{{invalid")
        assert ast.nodes == []


class TestIniParser:
    """Tests for IniParser."""

    def test_simple_section(self):
        parser = IniParser()
        ast = parser.parse("""
[section]
key = value
""")
        assert len(ast.nodes) == 1
        section = ast.nodes[0]
        assert isinstance(section, Section)
        assert section.name == "section"
        assert len(section.children) == 1
        assert section.children[0].key == "key"
        assert section.children[0].value == "value"

    def test_multiple_sections(self):
        parser = IniParser()
        ast = parser.parse("""
[section1]
a = 1

[section2]
b = 2
""")
        assert len(ast.nodes) == 2
        assert ast.nodes[0].name == "section1"
        assert ast.nodes[1].name == "section2"

    def test_boolean_values(self):
        parser = IniParser()
        ast = parser.parse("""
[section]
a = true
b = false
c = yes
d = no
""")
        section = ast.nodes[0]
        for child in section.children:
            assert child.type == ValueType.BOOL

    def test_type_inference(self):
        parser = IniParser()
        ast = parser.parse("""
[section]
int = 42
float = 3.14
str = hello
""")
        section = ast.nodes[0]
        by_key = {n.key: n for n in section.children}
        assert by_key["int"].type == ValueType.INT
        assert by_key["float"].type == ValueType.FLOAT
        assert by_key["str"].type == ValueType.STRING


class TestPropertiesParser:
    """Tests for PropertiesParser."""

    def test_simple_properties(self):
        parser = PropertiesParser()
        ast = parser.parse("""
key1=value1
key2=value2
""")
        assert len(ast.nodes) == 2
        assert ast.nodes[0].key == "key1"
        assert ast.nodes[0].value == "value1"

    def test_colon_separator(self):
        parser = PropertiesParser()
        ast = parser.parse("key:value")
        assert ast.nodes[0].key == "key"
        assert ast.nodes[0].value == "value"

    def test_comments(self):
        parser = PropertiesParser()
        ast = parser.parse("""
# comment
key=value
! another comment
""")
        assert len(ast.nodes) == 1
        assert ast.nodes[0].key == "key"

    def test_type_inference(self):
        parser = PropertiesParser()
        ast = parser.parse("""
bool=true
int=42
float=3.14
str=hello
""")
        by_key = {n.key: n for n in ast.nodes}
        assert by_key["bool"].type == ValueType.BOOL
        assert by_key["int"].type == ValueType.INT
        assert by_key["float"].type == ValueType.FLOAT
        assert by_key["str"].type == ValueType.STRING


class TestDetectFormat:
    """Tests for format detection."""

    def test_json_extension(self):
        from pathlib import Path
        assert detect_format(Path("test.json"), "{}") == "json"

    def test_xml_extension(self):
        from pathlib import Path
        assert detect_format(Path("test.xml"), "<root/>") == "xml"

    def test_ini_extension(self):
        from pathlib import Path
        assert detect_format(Path("test.ini"), "[section]") == "ini"

    def test_properties_extension(self):
        from pathlib import Path
        assert detect_format(Path("test.properties"), "key=value") == "properties"

    def test_forge_typed(self):
        from pathlib import Path
        assert detect_format(Path("test.cfg"), "B:enabled=true") == "forge"

    def test_forge_untyped(self):
        from pathlib import Path
        assert detect_format(Path("test.cfg"), 'general {\n    key=value\n}') == "forge_untyped"

    def test_json_content(self):
        from pathlib import Path
        assert detect_format(Path("test.cfg"), '{"key": "value"}') == "json"

    def test_ini_content(self):
        from pathlib import Path
        assert detect_format(Path("test.cfg"), "[section]\nkey=value") == "ini"


class TestGetParser:
    """Tests for parser factory."""

    def test_get_forge_parser(self):
        parser = get_parser("forge")
        assert isinstance(parser, ForgeParser)

    def test_get_json_parser(self):
        parser = get_parser("json")
        assert isinstance(parser, JsonParser)

    def test_get_xml_parser(self):
        parser = get_parser("xml")
        assert isinstance(parser, XmlParser)

    def test_get_hocon_parser(self):
        parser = get_parser("hocon")
        assert isinstance(parser, HoconParser)

    def test_get_ini_parser(self):
        parser = get_parser("ini")
        assert isinstance(parser, IniParser)

    def test_get_properties_parser(self):
        parser = get_parser("properties")
        assert isinstance(parser, PropertiesParser)

    def test_unknown_format(self):
        parser = get_parser("unknown")
        assert isinstance(parser, ForgeParser)  # Falls back to Forge


class TestFlatten:
    """Tests for AST flattening."""

    def test_flatten_entries(self):
        parser = ForgeParser()
        ast = parser.parse("""
general {
    B:enabled=true
    I:count=42
}
""")
        entries = parser.flatten(ast)
        assert len(entries) == 2
        paths = [e[0] for e in entries]
        assert "general.enabled" in paths
        assert "general.count" in paths

    def test_flatten_list(self):
        parser = ForgeParser()
        ast = parser.parse("""
S:items <
    a
    b
>
""")
        entries = parser.flatten(ast)
        assert len(entries) == 1
        assert entries[0][0] == "items"
        assert entries[0][2] == ["a", "b"]

    def test_flatten_nested(self):
        parser = ForgeParser()
        ast = parser.parse("""
a {
    b {
        c {
            I:value=1
        }
    }
}
""")
        entries = parser.flatten(ast)
        assert len(entries) == 1
        assert entries[0][0] == "a.b.c.value"
