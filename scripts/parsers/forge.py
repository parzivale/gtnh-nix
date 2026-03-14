"""Forge config file parser."""

from __future__ import annotations

import re

from .ast import ConfigAST, Entry, List, Section, Node, ValueType
from .base import ConfigParser


class ForgeParser(ConfigParser):
    """Parser for Minecraft Forge .cfg files.

    Handles both typed (B:key=value) and untyped (key=value) formats.

    Example:
        # Comment
        "section name" {
            B:boolOption=true
            I:intOption=42
            S:listOption <
                value1
                value2
            >
        }
    """

    def parse(self, text: str) -> ConfigAST:
        lines = text.splitlines()
        nodes, _ = self._parse_block(lines, 0, top=True)
        return ConfigAST(nodes=nodes)

    def _is_separator_comment(self, s: str) -> bool:
        """Check if comment is just a visual separator."""
        return not s or bool(re.match(r'^[#\-=*~ ]+$', s))

    def _parse_block(self, lines: list[str], pos: int, top: bool = False) -> tuple[list[Node], int]:
        """Recursively parse a block of config."""
        nodes = []
        comment_buf = []

        def take_comment() -> str:
            c = ' '.join(comment_buf)
            comment_buf.clear()
            return c

        while pos < len(lines):
            raw = lines[pos]
            line = raw.strip()
            pos += 1

            if not line:
                comment_buf.clear()
                continue

            if line.startswith('#'):
                text = line[1:].strip()
                if not self._is_separator_comment(text):
                    comment_buf.append(text)
                continue

            # Section end
            if line == '}':
                if top:
                    continue
                return nodes, pos

            # Section start: "name" { or name {
            m = re.match(r'^"([^"]+)"\s*\{$', line)
            if not m:
                m = re.match(r'^([\w][\w\s.-]*?)\s*\{$', line)
            if m:
                name = m.group(1).strip()
                desc = take_comment()
                children, pos = self._parse_block(lines, pos, top=False)
                nodes.append(Section(name=name, children=children, description=desc))
                continue

            # List: TYPE:"key" < or TYPE:key <
            m = re.match(r'^([A-Za-z]):"?([^"<>]+?)"?\s*<\s*$', line)
            if m:
                prefix = m.group(1).upper()
                key = m.group(2).strip()
                desc = take_comment()
                vals = []
                while pos < len(lines):
                    vraw = lines[pos].strip()
                    pos += 1
                    if vraw == '>':
                        break
                    if vraw and not vraw.startswith('#'):
                        vals.append(vraw)
                vtype = ValueType(prefix) if prefix in 'BIDS' else ValueType.STRING
                nodes.append(List(key=key, values=vals, type=vtype, description=desc))
                continue

            # Simple value: TYPE:"key"=value or TYPE:key=value
            m = re.match(r'^([A-Za-z]):"([^"]+)"=(.*)$', line)
            if not m:
                m = re.match(r'^([A-Za-z]):([^=\s"<>]+?)=(.*)$', line)
            if m:
                prefix = m.group(1).upper()
                key = m.group(2).strip()
                val = m.group(3).strip()
                desc = take_comment()
                vtype = ValueType(prefix) if prefix in 'BIDS' else ValueType.STRING
                nodes.append(Entry(key=key, value=val, type=vtype, description=desc))
                continue

            # Multi-line section header
            if pos < len(lines) and lines[pos].strip() == '{':
                m = re.match(r'^"?([^"{}=<>]+?)"?$', line)
                if m:
                    name = m.group(1).strip()
                    pos += 1
                    desc = take_comment()
                    children, pos = self._parse_block(lines, pos, top=False)
                    nodes.append(Section(name=name, children=children, description=desc))
                    continue

            # Untyped value: key=value
            m = re.match(r'^([^:={}<>\s][^:={}<>]*?)=(.*)$', line)
            if m:
                key = m.group(1).strip()
                val = m.group(2).strip()
                desc = take_comment()
                nodes.append(Entry(key=key, value=val, type=ValueType.STRING, description=desc))
                continue

            comment_buf.clear()

        return nodes, pos
