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
    # D/F values are stored as strings to preserve precision. Detect numeric
    # strings (integer or float) and emit D: prefix. The decimal point is
    # optional: some D: fields have integer-looking values like 20000.
    else if builtins.isString v && builtins.match "-?[0-9]+\\.?[0-9]*([Ee][+\\-]?[0-9]+)?" v != null
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

  mkJsonFile = attrs:
    pkgs.writeText (builtins.baseNameOf attrs.path) (builtins.toJSON (builtins.removeAttrs attrs ["kind" "path"]));

  mkXmlFile = attrs:
    pkgs.writeText (builtins.baseNameOf attrs.path) (builtins.toXML (builtins.removeAttrs attrs ["kind" "path"]));

  mkConfigFile = attrs:
    if attrs.kind == "forge"
    then mkCfgFile attrs
    else if attrs.kind == "json"
    then mkJsonFile attrs
    else if attrs.kind == "xml"
    then mkXmlFile attrs
    else throw "AHHH";
in {
  inherit mkConfigFile;
}
