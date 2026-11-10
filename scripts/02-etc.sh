#!/usr/bin/env bash
#
# 02-etc.sh: Copy /etc configuration files
#
set -euo pipefail

[ "$(id -u)" -eq 0 ] || {
    echo "error: must run as root" >&2
    exit 1
}

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

echo "==> Copying /etc configurations..."
cp -r "$ROOT_DIR/extra/etc/." /etc/

echo "==> Applying systemd presets..."
systemctl preset-all
