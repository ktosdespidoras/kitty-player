#!/usr/bin/env bash
set -euo pipefail

mkdir -p "$HOME/.local/bin"
cp "$(dirname "$0")/bin/player" "$HOME/.local/bin/player"
chmod +x "$HOME/.local/bin/player"

case ":$PATH:" in
  *":$HOME/.local/bin:"*)
    ;;
  *)
    echo 'Add this line to ~/.bashrc or ~/.zshrc:'
    echo 'export PATH="$HOME/.local/bin:$PATH"'
    ;;
esac

echo "Installed. Run: player"
