{
  lib,
  pkgs,
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

  mkXmlFile = attrs:
    pkgs.writeText (builtins.baseNameOf attrs.path) (builtins.toXML (builtins.removeAttrs attrs ["kind" "path"]));

  mkConfigFile = attrs:
    if attrs.kind == "forge"
    then mkCfgFile attrs
    else if attrs.kind == "forge_untyped"
    then mkCfgFileUntyped attrs
    else if attrs.kind == "json"
    then mkJsonFile attrs
    else if attrs.kind == "xml"
    then mkXmlFile attrs
    else throw "AHHH";

  base-url = "https://downloads.gtnewhorizons.com/ServerPacks/";
  mkVersion = version:
    pkgs.stdenv.mkDerivation {
      name = "gtnh";
      version = version.version;
      src = pkgs.fetchurl {
        url = "${base-url}${
          if version.beta
          then "/betas/"
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
    };

  manpageUrls = pkgs.writeText "manpage-urls.json" "{}";

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

      ${lib.concatStringsSep "\n\n" (map (version: ''
          # ${version}

          ## Minecraft options

          ${lib.concatStringsSep "\n" (map (modName: "- [${modName}](${version}/${modName}.md)") (builtins.attrNames version.minecraft))}

          ## Mod options

          ${lib.concatStringsSep "\n" (map (modName: "- [${modName}](${version}/${modName}.md)") (builtins.attrNames version.mods))}
        '')
        versions)}
    '';

  indexDoc = versions:
    pkgs.writeText "index.md" ''
      # GTNH Nix Configuration Options

      Configuration options exposed by the gtnh-nix NixOS module.

      ## Available Versions

      ${lib.concatStringsSep "\n" (map (version: "- [${version}](${version}/index.md)") versions)}
    '';

  # Generate per-version index pages
  mkVersionIndex = version:
    pkgs.writeText "index.md" ''
      # ${version} Configuration Options

      ## Minecraft options

      ${lib.concatStringsSep "\n" (map (modName: "- [${modName}](${modName}.md)") (builtins.attrNames version.minecraft))}

      ## Mod options

      ${lib.concatStringsSep "\n" (map (modName: "- [${modName}](${modName}.md)") (builtins.attrNames version.mods))}
    '';

  allDocs = versions:
    pkgs.runCommand "gtnh-docs" {
      nativeBuildInputs = [pkgs.mdbook];
    } ''
      mkdir -p book/src
      cp ${bookToml} book/book.toml
      cp ${summaryMd} book/src/SUMMARY.md
      cp ${indexDoc}  book/src/index.md

      # Copy docs for each version
      ${lib.concatStringsSep "\n" (map (version: ''
          mkdir -p book/src/${version}
          cp ${mkVersionIndex version} book/src/${version}/index.md
          ${lib.concatStringsSep "\n" (lib.mapAttrsToList (modName: doc: ''
              cp ${doc} book/src/${version}/${modName}.md
            '')
            version.mods)}
          ${lib.concatStringsSep "\n" (lib.mapAttrsToList (optionName: doc: ''
              cp ${doc} book/src/${version}/${optionName}.md
            '')
            version.minecraft)}
        '')
        versions)}

      mdbook build book --dest-dir $out
    '';
in {
  inherit mkConfigFile mkVersion;
}
