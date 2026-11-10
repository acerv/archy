#!/usr/bin/env bash
#
# install.sh: Master runner for Arch Linux system configuration
#
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

[ "$(id -u)" -eq 0 ] || {
    echo "error: must run as root" >&2
    exit 1
}

for script in "$SCRIPT_DIR"/scripts/*.sh; do
    [ -f "$script" ] || continue
    echo "==> Running $(basename "$script")..."
    "$script"
done

echo "==> All scripts executed successfully."
