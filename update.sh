#!/data/data/com.termux/files/usr/bin/bash
set -e
REPO_DIR="$(cd "$(dirname "$0")" && pwd)"
cd "$REPO_DIR"
git pull --ff-only
bash install.sh
