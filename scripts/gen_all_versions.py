#!/usr/bin/env python3
"""Generate Nix options for all GTNH versions."""

import json
import shutil
import subprocess
import sys
import tempfile
import urllib.request
import zipfile
from pathlib import Path

BASE_URL = "https://downloads.gtnewhorizons.com/ServerPacks"
REFERENCE_VERSION = "2.8.4"


def run(cmd: list[str], check: bool = True) -> subprocess.CompletedProcess:
    """Run a command and return the result."""
    return subprocess.run(cmd, capture_output=True, text=True, check=check)


def load_version_list(root: Path) -> list[dict]:
    """Load version list from version-list.nix using nix eval."""
    result = run(
        ["nix", "eval", "--json", "-f", str(root / "version-list.nix")],
        check=False,
    )
    if result.returncode != 0:
        print(f"Failed to parse version-list.nix: {result.stderr}")
        return []
    return json.loads(result.stdout)


def build_download_url(version_info: dict) -> str:
    """Construct download URL from version info."""
    version = version_info["version"]
    java_version = version_info["java_version"]
    beta = version_info["beta"]

    if beta:
        return f"{BASE_URL}/betas/GT_New_Horizons_{version}_Server_Java_{java_version}.zip"
    else:
        return f"{BASE_URL}/GT_New_Horizons_{version}_Server_Java_{java_version}.zip"


def download_and_extract(url: str, dest: Path) -> bool:
    """Download and extract a GTNH server pack."""
    try:
        print(f"  Downloading {url}")
        request = urllib.request.Request(
            url,
            headers={"User-Agent": "Mozilla/5.0 (compatible; gtnh-nix/1.0)"}
        )
        with tempfile.NamedTemporaryFile(suffix=".zip", delete=False) as tmp:
            with urllib.request.urlopen(request) as response:
                tmp.write(response.read())
            print(f"  Extracting to {dest}")
            dest.mkdir(parents=True, exist_ok=True)
            with zipfile.ZipFile(tmp.name, 'r') as zf:
                zf.extractall(dest)
            Path(tmp.name).unlink()
        return True
    except Exception as e:
        print(f"  Failed: {e}")
        return False


def process_version(version_info: dict, root: Path) -> bool:
    """Process a single GTNH version."""
    version = version_info["version"]
    print(f"=== Processing {version} ===")

    version_dir = root / "versions" / version
    mods_dir = version_dir / "mods"
    minecraft_dir = version_dir / "minecraft"

    # Skip if already has mods
    if mods_dir.exists():
        existing = list(mods_dir.glob("*.nix"))
        if len(existing) > 10:
            print(f"Skipping {version} (already has mods)")
            return True

    # Download and extract the pack
    url = build_download_url(version_info)
    with tempfile.TemporaryDirectory() as tmpdir:
        pack_dir = Path(tmpdir) / "pack"
        if not download_and_extract(url, pack_dir):
            print(f"Failed to download {version}, skipping")
            return False

        # Create directories
        mods_dir.mkdir(parents=True, exist_ok=True)
        minecraft_dir.mkdir(parents=True, exist_ok=True)

        # Generate mod options
        gen_script = root / "scripts" / "gen_cfg_options.py"
        result = run(
            [sys.executable, str(gen_script), str(pack_dir), str(mods_dir)],
            check=False,
        )
        if result.returncode != 0:
            print(f"Failed to generate options for {version}: {result.stderr}")
            return False

    # Copy minecraft options from reference version (skip if same version)
    if version != REFERENCE_VERSION:
        ref_minecraft = root / "versions" / REFERENCE_VERSION / "minecraft"
        if ref_minecraft.exists():
            for nix_file in ref_minecraft.glob("*.nix"):
                shutil.copy(nix_file, minecraft_dir / nix_file.name)

    # Copy default.nix from reference version
    ref_default = root / "versions" / REFERENCE_VERSION / "default.nix"
    if ref_default.exists():
        shutil.copy(ref_default, version_dir / "default.nix")

    print(f"Done with {version}")
    return True


def main():
    root = Path(__file__).parent.parent.resolve()

    # Load versions from version-list.nix
    versions = load_version_list(root)
    if not versions:
        print("No versions found in version-list.nix")
        sys.exit(1)

    print(f"Found {len(versions)} versions in version-list.nix")

    success = 0
    failed = 0

    for version_info in versions:
        if process_version(version_info, root):
            success += 1
        else:
            failed += 1

    print()
    print(f"=== All done: {success} succeeded, {failed} failed ===")


if __name__ == "__main__":
    main()
