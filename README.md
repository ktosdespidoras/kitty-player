# kitty-player

Tiny terminal toy for Linux/kitty. It installs a `player` command that draws a fake animated vinyl deck with truecolor ANSI output.

No Python, no dependencies, no build step.

## Install

```bash
git clone <your-repo-url> kitty-player
cd kitty-player
./install.sh
```

Then run it from anywhere:

```bash
player
```

Quit with `q` or `Ctrl+C`.

## Manual install

```bash
mkdir -p ~/.local/bin
cp bin/player ~/.local/bin/player
chmod +x ~/.local/bin/player
```

Make sure `~/.local/bin` is in your `PATH`.
