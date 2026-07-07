# kitty-player

Tiny terminal music deck for Linux/kitty. It installs a `player` command that reads your real media session through `playerctl` and draws an animated terminal UI.

No Python, no build step. Requires `playerctl` on the Linux machine.

Auto lyrics use `curl`, `jq`, and LRCLIB.

## Config

Local config lives here:

```bash
~/.config/kitty-player/env
```

`./install.sh` creates it from `env.example`. Put API keys there, not in git:

```bash
GENIUS_CLIENT_ID="..."
GENIUS_CLIENT_SECRET="..."
GENIUS_ACCESS_TOKEN="..."
```

## Install playerctl

```bash
# Arch
sudo pacman -S playerctl

# Debian/Ubuntu
sudo apt install playerctl

# Fedora
sudo dnf install playerctl
```

For automatic lyrics:

```bash
# Arch
sudo pacman -S curl jq

# Debian/Ubuntu
sudo apt install curl jq

# Fedora
sudo dnf install curl jq
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

- `Tab` switch between now playing and lyrics pages
- `1` now playing page
- `2` lyrics page
- `Space` play/pause
- `n` next track
- `p` previous track
- `s` stop
- `r` refresh
- `L` refetch lyrics for the current track
- `q` quit

## Lyrics

`player` first looks for lyrics in:

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

Names keep Unicode letters, unsafe filename characters are replaced, and spaces become `-`. Example:

```text
~/.cache/kitty-player/lyrics/example-artist-example-song.lrc
```

Synced `.lrc` example:

```text
[00:12.00]First custom lyric line
[00:17.00]Second custom lyric line
```

Plain `.txt` files also work, but they scroll without timing.

If no local file exists and `curl`/`jq` are installed, `player` tries to fetch lyrics from LRCLIB and saves them into the same folder. The match is checked against artist, title, and duration to avoid random lyrics.

If a bad lyric file was cached earlier, press `L` inside `player` to remove the cached file for the current track and fetch it again.

## Manual install

```bash
mkdir -p ~/.local/bin
cp bin/player ~/.local/bin/player
chmod +x ~/.local/bin/player
```

Make sure `~/.local/bin` is in your `PATH`.
