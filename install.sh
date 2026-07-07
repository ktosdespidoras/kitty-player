#!/usr/bin/env bash
set -euo pipefail

mkdir -p "$HOME/.local/bin"
mkdir -p "${XDG_CACHE_HOME:-$HOME/.cache}/kitty-player/lyrics"
cp "$(dirname "$0")/bin/player" "$HOME/.local/bin/player"
chmod +x "$HOME/.local/bin/player"

if ! command -v playerctl >/dev/null 2>&1; then
  echo "Note: playerctl is not installed. Install it to control real media players."
fi

case ":$PATH:" in
  *":$HOME/.local/bin:"*)
    ;;
  *)
    echo 'Add this line to ~/.bashrc or ~/.zshrc:'
    echo 'export PATH="$HOME/.local/bin:$PATH"'
    ;;
esac

echo "Installed. Run: player"
