{
  lib,
  pkgs,
  ...
}: let
  mkTypePrefix = v:
    if builtins.isBool v
    then "B"
    else if builtins.isInt v
    then "I"
    else if builtins.isFloat v
    then "D"
    else "S";

  mkValue = v:
    if builtins.isBool v
    then
      (
        if v
        then "true"
        else "false"
      )
    else if builtins.isFloat v
    then builtins.toJSON v
    else toString v;

  mkEntry = k: v:
    if builtins.isAttrs v
    # Empty-string key represents a top-level anonymous section.
    # Writing `"" {` would produce an unmatched-quote parse error in Forge;
    # write bare `{` instead, which Forge accepts as an anonymous section.
    then
      if k == ""
      then "{\n${mkCfg v}\n}"
      else "\"${k}\" {\n${mkCfg v}\n}"
    else if builtins.isList v
    then
      if v == []
      then ""
      else let
        prefix = mkTypePrefix (builtins.head v);
      in "${prefix}:\"${k}\" <\n${lib.concatMapStrings (x: "${mkValue x}\n") v}>"
    else "${mkTypePrefix v}:\"${k}\"=${mkValue v}";

  mkCfg = attrs:
    lib.concatStringsSep "\n" (lib.mapAttrsToList mkEntry attrs);

  mkCfgFile = attrs:
    pkgs.writeText (builtins.baseNameOf attrs.path) (mkCfg (builtins.removeAttrs attrs ["kind" "path"]));

  mkEntryUntyped = k: v:
    if builtins.isAttrs v
    # Empty-string key represents a top-level anonymous section.
    # Writing `"" {` would produce an unmatched-quote parse error in Forge;
    # write bare `{` instead, which Forge accepts as an anonymous section.
    then
      if k == ""
      then "{\n${mkCfgUntyped v}\n}"
      else "\"${k}\" {\n${mkCfgUntyped v}\n}"
    else if builtins.isList v
    then
      if v == []
      then ""
      else "\"${k}\" <\n${lib.concatMapStrings (x: "${mkValue x}\n") v}>"
    else "\"${k}\"=${mkValue v}";

  mkCfgUntyped = attrs:
    lib.concatStringsSep "\n" (lib.mapAttrsToList mkEntryUntyped attrs);

  mkCfgFileUntyped = attrs:
    pkgs.writeText (builtins.baseNameOf attrs.path) (mkCfgUntyped (builtins.removeAttrs attrs ["kind" "path"]));

  mkJsonFile = attrs:
    pkgs.writeText (builtins.baseNameOf attrs.path) (builtins.toJSON (builtins.removeAttrs attrs ["kind" "path"]));

  # XML renderer - converts Nix attrsets to proper XML format
  # Convention:
  # - Keys starting with @ are XML attributes: "@at" = "topleft" → at="topleft"
  # - Keys ending with _N (numeric suffix) are repeated elements: line_0, line_1 → <line>...</line>
  # - Other keys are child elements
  # - Scalar values become element text content
  # - Attrset values become nested elements

  # Strip numeric suffix from key name: "line_0" → "line"
  stripNumericSuffix = key:
    let
      # Match trailing _N where N is digits
      match = builtins.match "(.*)_([0-9]+)" key;
    in
      if match != null then builtins.head match else key;

  # Extract numeric suffix from key name: "line_0" → 0, "line" → 0
  getNumericSuffix = key:
    let
      match = builtins.match ".*_([0-9]+)" key;
    in
      if match != null then lib.toInt (builtins.head match) else 0;

  # Sort keys by: 1) base name (without suffix), 2) numeric suffix
  # This preserves original XML element order
  sortXmlKeys = keys:
    builtins.sort (a: b:
      let
        baseA = stripNumericSuffix a;
        baseB = stripNumericSuffix b;
        numA = getNumericSuffix a;
        numB = getNumericSuffix b;
      in
        if baseA == baseB then numA < numB
        else baseA < baseB
    ) keys;

  # Escape special XML characters
  xmlEscape = s:
    builtins.replaceStrings
      ["&" "<" ">" "\"" "'"]
      ["&amp;" "&lt;" "&gt;" "&quot;" "&apos;"]
      (toString s);

  # Render a single XML attribute (handle bools specially since toString false = "")
  mkXmlAttr = name: value:
    let
      strValue = if builtins.isBool value then (if value then "true" else "false") else toString value;
    in "${name}=\"${xmlEscape strValue}\"";

  # Render XML element content (recursive)
  mkXmlElement = indent: name: value:
    let
      ind = indent;
      ind2 = indent + "  ";
    in
      if builtins.isAttrs value then
        let
          # Separate @ attributes from child elements
          allKeys = builtins.attrNames value;
          attrKeys = builtins.filter (k: lib.hasPrefix "@" k) allKeys;
          childKeys = builtins.filter (k: !(lib.hasPrefix "@" k)) allKeys;

          # Render attributes (strip @ prefix)
          attrs = lib.concatMapStringsSep " " (k: mkXmlAttr (lib.removePrefix "@" k) value.${k}) attrKeys;
          attrStr = if attrs == "" then "" else " ${attrs}";

          # Render children (sorted by numeric suffix to preserve order)
          children = lib.concatMapStrings (k:
            let
              elemName = stripNumericSuffix k;
              childValue = value.${k};
            in
              mkXmlElement ind2 elemName childValue
          ) (sortXmlKeys childKeys);
        in
          if childKeys == [] then
            "${ind}<${name}${attrStr}/>\n"
          else
            "${ind}<${name}${attrStr}>\n${children}${ind}</${name}>\n"
      else if builtins.isList value then
        # List values - render each item as a separate element
        lib.concatMapStrings (item: mkXmlElement indent name item) value
      else if builtins.isBool value then
        # Boolean value - render as "true" or "false"
        "${ind}<${name}>${if value then "true" else "false"}</${name}>\n"
      else
        # Scalar value - render as element with text content
        "${ind}<${name}>${xmlEscape value}</${name}>\n";

  # Render the root XML structure
  mkXmlCfg = attrs:
    let
      # Get all keys except path, kind, and __root
      content = builtins.removeAttrs attrs ["kind" "path" "__root"];
      allKeys = builtins.attrNames content;
      # Separate @ attributes (root element attributes) from child elements
      attrKeys = builtins.filter (k: lib.hasPrefix "@" k) allKeys;
      childKeys = builtins.filter (k: !(lib.hasPrefix "@" k)) allKeys;
      # Get root element name, default to "config" if not specified
      rootName = attrs.__root or "config";
      # Render root element attributes
      rootAttrs = lib.concatMapStringsSep " " (k: mkXmlAttr (lib.removePrefix "@" k) content.${k}) attrKeys;
      rootAttrStr = if rootAttrs == "" then "" else " ${rootAttrs}";
      # Render children
      children = lib.concatMapStrings (k:
        let elemName = stripNumericSuffix k;
        in mkXmlElement "  " elemName content.${k}
      ) (sortXmlKeys childKeys);
    in
      if childKeys == [] then
        "<${rootName}${rootAttrStr}/>\n"
      else
        "<${rootName}${rootAttrStr}>\n${children}</${rootName}>\n";

  mkXmlFile = attrs:
    pkgs.writeText (builtins.baseNameOf attrs.path) (mkXmlCfg attrs);

  # HOCON format (similar to JSON but more relaxed)
  mkHoconEntry = indent: k: v:
    if builtins.isAttrs v
    then "${indent}${k} {\n${mkHoconCfg (indent + "  ") v}${indent}}\n"
    else if builtins.isList v
    then "${indent}${k} = [${lib.concatMapStrings (x: "\n${indent}  ${mkHoconValue x}") v}\n${indent}]\n"
    else "${indent}${k} = ${mkHoconValue v}\n";

  mkHoconValue = v:
    if builtins.isBool v then (if v then "true" else "false")
    else if builtins.isInt v then toString v
    else if builtins.isFloat v then builtins.toJSON v
    else "\"${toString v}\"";

  mkHoconCfg = indent: attrs:
    lib.concatStrings (lib.mapAttrsToList (mkHoconEntry indent) attrs);

  mkHoconFile = attrs:
    pkgs.writeText (builtins.baseNameOf attrs.path) (mkHoconCfg "" (builtins.removeAttrs attrs ["kind" "path"]));

  # INI format ([section] headers with key=value)
  mkIniSection = name: attrs:
    "[${name}]\n${lib.concatStringsSep "\n" (lib.mapAttrsToList (k: v: "${k}=${mkValue v}") attrs)}\n";

  mkIniCfg = attrs:
    lib.concatStrings (lib.mapAttrsToList mkIniSection attrs);

  mkIniFile = attrs:
    pkgs.writeText (builtins.baseNameOf attrs.path) (mkIniCfg (builtins.removeAttrs attrs ["kind" "path"]));

  # Properties format (simple key=value)
  mkPropertiesEntry = k: v:
    if builtins.isAttrs v
    then lib.concatStringsSep "\n" (lib.mapAttrsToList (k2: v2: mkPropertiesEntry "${k}.${k2}" v2) v)
    else "${k}=${mkValue v}";

  mkPropertiesCfg = attrs:
    lib.concatStringsSep "\n" (lib.mapAttrsToList mkPropertiesEntry attrs);

  mkPropertiesFile = attrs:
    pkgs.writeText (builtins.baseNameOf attrs.path) (mkPropertiesCfg (builtins.removeAttrs attrs ["kind" "path"]));

  mkConfigFile = attrs:
    if attrs.kind == "forge"
    then mkCfgFile attrs
    else if attrs.kind == "forge_untyped"
    then mkCfgFileUntyped attrs
    else if attrs.kind == "json"
    then mkJsonFile attrs
    else if attrs.kind == "xml"
    then mkXmlFile attrs
    else if attrs.kind == "hocon"
    then mkHoconFile attrs
    else if attrs.kind == "ini"
    then mkIniFile attrs
    else if attrs.kind == "properties"
    then mkPropertiesFile attrs
    else throw "Unknown config kind: ${attrs.kind}";

  base-url = "https://downloads.gtnewhorizons.com/ServerPacks/";
  mkVersion = version: pkgs: (pkgs.stdenv.mkDerivation {
    name = "gtnh";
    version = version.version;
    src = pkgs.fetchurl {
      url = "${base-url}${
        if version.beta
        then "betas/"
        else ""
      }GT_New_Horizons_${version.version}_Server_Java_${version.java_version}.zip";
      sha256 = version.sha;
    };
    nativeBuildInputs = [pkgs.unzip];
    unpackPhase = ''
      unzip $src
    '';
    installPhase = ''
      mkdir -p $out
      cp -r . $out/
    '';
  });

  bookToml = pkgs.writeText "book.toml" ''
    [book]
    title = "GTNH Nix Configuration Options"
    language = "en"
    src = "src"

    [output.html]
    no-section-label = true
    site-url = "/gtnh-nix/"
  '';

  # Generate SUMMARY.md with sections per version
  summaryMd = versions:
    pkgs.writeText "SUMMARY.md" ''
      # Summary

      [Introduction](index.md)

      ${lib.concatStringsSep "\n\n" (map ({
          name,
          value,
        }: ''
          # ${name}

          - [Overview](${name}/index.md)

          ## Minecraft options

          ${lib.concatStringsSep "\n" (map (modName: "- [${modName}](${name}/${modName}.md)") (builtins.attrNames value.minecraft))}

          ## Mod options

          ${lib.concatStringsSep "\n" (map (modName: "- [${modName}](${name}/${modName}.md)") (builtins.attrNames value.mods))}
        '')
        (lib.attrsToList versions))}
    '';

  indexDoc = versions:
    pkgs.writeText "index.md" ''
      # GTNH Nix Configuration Options

      Configuration options exposed by the gtnh-nix NixOS module.

      ## Available Versions

      ${lib.concatStringsSep "\n" (map (version: "- [${version}](${version}/index.md)") (builtins.attrNames versions))}
    '';

  # Generate per-version index pages
  mkVersionIndex = {
    name,
    value,
  }:
    pkgs.writeText "index.md" ''
      # ${name} Configuration Options

      ## Minecraft options

      ${lib.concatStringsSep "\n" (map (modName: "- [${modName}](${modName}.md)") (builtins.attrNames value.minecraft))}

      ## Mod options

      ${lib.concatStringsSep "\n" (map (modName: "- [${modName}](${modName}.md)") (builtins.attrNames value.mods))}
    '';

  manpageUrls = pkgs.writeText "manpage-urls.json" "{}";

  mkDoc = rawOptions: pkgs: let
    evaluated = lib.evalModules {
      modules = [{options = rawOptions;}];
    };
    optionsDoc = pkgs.nixosOptionsDoc {
      options = builtins.removeAttrs evaluated.options ["_module"];
      warningsAreErrors = false;
    };
  in
    pkgs.runCommand "options.md" {
      nativeBuildInputs = [pkgs.nixos-render-docs pkgs.jq];
    } ''
      jq 'with_entries(select(
        (.value.type != "submodule") and
        ((.key | split(".") | last) | . != "path" and . != "kind")
      ))' < ${optionsDoc.optionsJSON}/share/doc/nixos/options.json > filtered.json
      nixos-render-docs options commonmark \
        --manpage-urls ${manpageUrls} \
        --revision "" \
        filtered.json \
        $out
    '';

  allDocs = versions: pkgs: let
    summaryMd' = summaryMd versions;
    indexDoc' = indexDoc versions;
  in
    pkgs.runCommand "gtnh-docs" {
      nativeBuildInputs = [pkgs.mdbook];
    } ''
      mkdir -p book/src
      cp ${bookToml} book/book.toml
      cp ${summaryMd'} book/src/SUMMARY.md
      cp ${indexDoc'}  book/src/index.md

      # Copy docs for each version
      ${lib.concatStringsSep "\n" (map ({
          name,
          value,
        }: ''
          mkdir -p book/src/${name}
          cp ${mkVersionIndex {inherit name value;}} book/src/${name}/index.md
          ${lib.concatStringsSep "\n" (lib.mapAttrsToList (modName: doc: ''
              cp ${mkDoc doc pkgs} book/src/${name}/${modName}.md
            '')
            value.mods)}
          ${lib.concatStringsSep "\n" (lib.mapAttrsToList (optionName: doc: ''
              cp ${mkDoc doc pkgs} book/src/${name}/${optionName}.md
            '')
            value.minecraft)}
        '')
        (lib.reverseList (lib.attrsToList versions)))}

      mdbook build book --dest-dir $out
    '';
in {
  inherit mkConfigFile mkVersion allDocs;
}
