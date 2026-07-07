# kitty-player

Tiny terminal music deck for Linux/kitty. It installs a `player` command that reads your real media session through `playerctl` and draws an animated terminal UI.

No Python, no build step. Requires `playerctl` on the Linux machine.

## Install playerctl

```bash
# Arch
sudo pacman -S playerctl

# Debian/Ubuntu
sudo apt install playerctl

# Fedora
sudo dnf install playerctl
```

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

Keys:

- `Space` play/pause
- `n` next track
- `p` previous track
- `s` stop
- `r` refresh
- `q` quit

## Lyrics

`player` looks for lyrics in:

```bash
~/.cache/kitty-player/lyrics/
```

Supported file names:

```text
artist-title.lrc
artist-title.txt
title.lrc
title.txt
```

Names are lowercase and spaces become `-`. Example:

```text
~/.cache/kitty-player/lyrics/example-artist-example-song.lrc
```

Synced `.lrc` example:

```text
[00:12.00]First custom lyric line
[00:17.00]Second custom lyric line
```

Plain `.txt` files also work, but they scroll without timing.

## Manual install

```bash
mkdir -p ~/.local/bin
cp bin/player ~/.local/bin/player
chmod +x ~/.local/bin/player
```

Make sure `~/.local/bin` is in your `PATH`.
