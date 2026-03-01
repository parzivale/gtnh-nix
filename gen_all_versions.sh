#!/usr/bin/env bash
set -e

VERSIONS=(
  "2.8.4"
  "2.8.3"
  "2.8.2"
  "2.8.1"
  "2.8.0"
  "2.8.0-rc-2"
  "2.8.0-rc-1"
  "2.8.0-beta-4"
  "2.8.0-beta-3"
  "2.8.0-beta-2"
  "2.8.0-beta-1"
  "2.7.4"
  "April_Fool_2025_Edition"
  "2.7.3"
  "2.7.2"
  "2.7.1"
  "2.7.0"
  "2.7.0-RC-3"
  "2.7.0-RC-2"
  "2.7.0-RC-1"
  "2.7.0-beta-4"
  "2.7.0-beta-3"
  "2.7.0-beta-2"
  "2.7.0-beta-1"
  "2.6.1"
  "2.6.0"
  "2.6.0-beta-3"
  "2.6.0-beta-2"
  "2.6.0-beta-1"
  "2.5.1"
  "2.5.0"
  "2.5.0-beta-1"
  "2.4.1"
  "2.4.0"
)

for VERSION in "${VERSIONS[@]}"; do
  echo "=== Processing $VERSION ==="
  
  # Skip if already has options
  if [[ -d "./versions/$VERSION/options/mods" ]] && [[ $(ls -1 "./versions/$VERSION/options/mods" 2>/dev/null | wc -l) -gt 10 ]]; then
    echo "Skipping $VERSION (already has options)"
    continue
  fi
  
  # Build package and get store path
  STORE_PATH=$(nix build ".#\"gtnh-$VERSION\"" --print-out-paths 2>/dev/null) || {
    echo "Failed to build $VERSION, skipping"
    continue
  }
  
  # Create directories
  mkdir -p "./versions/$VERSION/options/mods"
  mkdir -p "./versions/$VERSION/options/minecraft"
  
  # Generate mod options
  python3 ./gen_cfg_options.py "$STORE_PATH" "./versions/$VERSION/options/mods"
  
  # Copy protected files from 2.8.4 (they're hand-written)
  cp ./versions/2.8.4/options/mods/GregTech.nix "./versions/$VERSION/options/mods/" 2>/dev/null || true
  cp ./versions/2.8.4/options/mods/ServerUtilities.nix "./versions/$VERSION/options/mods/" 2>/dev/null || true
  
  # Copy minecraft options from 2.8.4
  cp ./versions/2.8.4/options/minecraft/*.nix "./versions/$VERSION/options/minecraft/"
  
  # Copy default.nix
  cp ./versions/2.8.4/default.nix "./versions/$VERSION/"
  
  echo "Done with $VERSION"
done

echo "=== All done ==="
