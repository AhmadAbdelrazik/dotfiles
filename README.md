# Dotfiles

A collection of configuration files for a modern, aesthetic, and productive **Arch Linux** desktop running **Hyprland** (Wayland) with **Waybar**. All configs are symlinked into `~/.config` via GNU Stow.

## 🚀 Stack

| Layer | Application |
| :--- | :--- |
| **Compositor** | [Hyprland](https://hyprland.org/) (Wayland, dwindle layout) |
| **Bar** | [Waybar](https://github.com/Alexays/Waybar) (modular, Nerd Font icons) |
| **Terminal** | [Kitty](https://sw.kovidgoyal.net/kitty/) (Catppuccin Mocha) |
| **Shell** | [Zsh](https://www.zsh.org/) + [Starship](https://starship.rs/) prompt |
| **Multiplexer** | [Tmux](https://github.com/tmux/tmux) + [TPM](https://github.com/tmux-plugins/tpm) · [Herdr](https://herdr.dev) (modern workspace/multiplexer) |
| **Launcher** | [Walker](https://github.com/abenz1267/walker) |
| **File Manager** | [Yazi](https://yazi-rs.github.io/) (terminal) + Nautilus (GUI) |
| **Notifications** | [SwayNC](https://github.com/ErikReider/SwayNotificationCenter) |
| **Screen Lock** | [Hyprlock](https://github.com/hyprwm/hyprlock) (multi-layout, music/battery/weather) |
| **Idle Daemon** | [Hypridle](https://github.com/hyprwm/hypridle) |
| **Wallpaper** | [Hyprpaper](https://github.com/hyprwm/hyprpaper) + [Waypaper](https://github.com/anufrievroman/waypaper) (GUI picker) |
| **Audio / EQ** | PipeWire/WirePlumber/PulseAudio + [EasyEffects](https://github.com/wwmm/easyeffects) |
| **System Info** | [Fastfetch](https://github.com/fastfetch-cli/fastfetch) |

## 📦 Tracked Configurations

Everything below lives in this repo and is applied via `stow .`:

- **`.config/hypr/`** — `hyprland.lua` (real entrypoint) + `hyprland.conf`, `hypridle.conf`, `hyprlock.conf`, `hyprpaper.conf`
- **`.config/hyprlock/`** — 18 layouts in `layouts/*.conf`, helper scripts in `scripts/*.sh`, bundled wallpapers
- **`.config/waybar/`** — `config.jsonc` + auto-loading `modules/*.jsonc`, styling split into `tokens/*.css`
- **`.config/kitty/`** — `kitty.conf` + Catppuccin theme files
- **`.config/walker/`** — app launcher `config.toml` (full defaults as baseline)
- **`.config/yazi/`** — Catppuccin-mocha `theme.toml`
- **`.config/easyeffects/`** — EQ/limiter/etc presets under `db/`
- **`.config/fastfetch/`** — `config.jsonc`
- **`.config/herdr/`** — `config.toml` (prefix `ctrl+s`, tmux-style bindings)
- **`.config/waypaper/`** — `config.ini` (hyprpaper backend)
- **`.local/scripts/`** — `screenshot`, `screen-recorder-toggle`, `battery-notify`, `tmux-sessionizer`, `herdr-sessionizer` (on `$PATH`)
- **dotfiles** — `.zshrc`, `.bashrc`, `.tmux.conf`

## 📁 Structure

```text
.
├── .config/
│   ├── easyeffects/    # Audio presets (EQ, limiter, etc.)
│   ├── fastfetch/      # System info
│   ├── herdr/          # Modern multiplexer / agent workspaces
│   ├── hypr/           # Hyprland, Hypridle, Hyprlock, Hyprpaper
│   ├── hyprlock/       # Lock layouts + helper scripts
│   ├── kitty/          # Terminal config & themes
│   ├── waybar/         # Modular status bar (modules/ + tokens/)
│   ├── waypaper/       # Wallpaper GUI config
│   └── yazi/           # Terminal file manager theme
│   └── walker/         # Application launcher
├── .local/scripts/     # Custom utility scripts
├── .tmux.conf          # Tmux config (TPM, Catppuccin)
├── .zshrc              # Zsh shell configuration
└── .bashrc             # Bash fallback configuration
```

## 🧩 Dependencies

### Core packages (config-tracked apps)

| Package | Purpose |
| :--- | :--- |
| `hyprland` | Wayland compositor |
| `waybar` | Status bar |
| `kitty` | Terminal emulator |
| `walker` | Application launcher |
| `yazi` | Terminal file manager |
| `hyprlock` | Screen locker |
| `hypridle` | Idle / auto-lock daemon |
| `hyprpaper` | Wallpaper daemon |
| `waypaper` | Wallpaper GUI picker |
| `easyeffects` | Audio equalizer / effects |
| `fastfetch` | System info fetching |
| `herdr` | Workspace / agent terminal multiplexer |
| `zsh` + `starship` | Shell + prompt |
| `tmux` + `tpm` | Terminal multiplexer + plugin manager |
| `nautilus` | GUI file manager |

### Runtime tools referenced by the configs

Many configs and scripts call out to these binaries on the live machine:

| Package | Used by |
| :--- | :--- |
| `swaync` / `swaync-client` | Notifications (Waybar tray + notifications) |
| `nm-applet` / `nmcli` | Network applet (autostart, Waybar network) |
| `blueman` / `rfkill` | Bluetooth manager (Waybar) |
| `pipewire` / `wireplumber` / `pulseaudio` | Audio (Waybar `pulseaudio`, media keys) |
| `pavucontrol` | Audio mixer (Waybar audio on-click) |
| `playerctl` | Media controls + Hyprlock music widgets |
| `brightnessctl` | Backlight keys + Waybar slider |
| `hyprshot` | Screenshots |
| `grim` + `slurp` + `wl-copy` | Screenshot script capture/copy |
| `satty` | Screenshot annotation (region/output) |
| `wf-recorder` + `pw-loopback` + `pactl` | Screen/audio recording toggle |
| `hyprpicker` | Color picker (`$mod+P`) |
| `hyprshutdown` | Graceful session exit (optional, falls back to `hyprctl`) |
| `hyprpolkitagent` | Polkit auth agent (autostart) |
| `power-profiles-daemon` | Power profiler (Waybar) |
| `zoxide` | Smart `cd` (`.zshrc`) |
| `fzf` | Fuzzy finding (sessionizer scripts) |
| `xclip` | Clipboard in tmux copy mode |
| `glava` | Audio visualizer (Hyprlock music lock, optional) |
| `cava` | Equalizer visualizer (Hyprlock layout script) |
| `curl`, `jq`, `magick` | Hyprlock location/weather/album-art scripts |
| `wifish` (via `ipinfo.io`, `wttr.in`) | Hyprlock location / weather |

### Fonts & icons

- **JetBrainsMono Nerd Font** — required across Waybar, Kitty, Wofi, Hyprlock
- **SF Pro Display** — used by one Hyprlock layout
- **Tela-circle-dark** — icon theme referenced by the Waybar tray

### Zsh plugins (sourced from `~/.zsh/`)

- `zsh-autosuggestions`
- `fast-syntax-highlighting`
- `zsh-autocomplete`

### Tmux plugins (via TPM, `~/.tmux/plugins/`)

- `tpm`
- `tmux-sensible`
- `catppuccin/tmux` (flavor `mocha`)
- `tmux-cpu`
- `tmux-battery`

## 🛠️ Installation

Designed for **Arch Linux**. Install the core packages listed above, then:

```bash
# Clone to your home directory
git clone https://github.com/abdelrazik/dotfiles ~/.dotfiles
cd ~/.dotfiles

# Symlink everything into place with GNU Stow
stow .
```

On the live machine, edits made here apply through the symlinks — restart Waybar (`killall waybar; waybar`) or Hyprland to verify.

## ✨ Features

- **Modular Waybar** — module definitions auto-load per-file from `modules/*.jsonc`; add a module by creating a file and referencing its id in `config.jsonc`. Styling lives in `tokens/`.
- **Multi-layout lock screen** — toggle between 18 Hyprlock layouts in `hyprlock.conf` (`layouts/layout*.conf`), with music, battery, location, and weather widgets driven by `scripts/*.sh`.
- **Herdr + tmux-sessionizer** — rapid project switching into either a Herdr workspace (`herdr-sessionizer`, bound to `Ctrl+F`) or a tmux session (`tmux-sessionizer`).
- **Screen recording** — `screen-recorder-toggle` (bound to `$mod+Print`) records with `wf-recorder`, letting you choose PC/mic/no audio.
- **Theming** — Catppuccin Mocha throughout (Waybar, Kitty, Wofi, Yazi, Tmux).

## ⌨️ Keybindings

`$mod` = `SUPER` (Windows key)

### General
- `$mod + Return` — Terminal (Kitty)
- `$mod + Shift + Return` — Browser (Brave)
- `$mod + Q` / `Shift + Q` — Close active window
- `$mod + Space` — Application launcher (Walker)
- `$mod + Shift + F` — File manager (Nautilus)
- `$mod + T` — Toggle floating
- `$mod + R` — Resize mode (arrow keys)
- `$mod + F` — Toggle fullscreen
- `$mod + Escape` — Power menu (wlogout)
- `$mod + P` — Color picker (`-f hex`); `$mod + Shift + P` → `-f hsl`
- `$mod + V` — Clipboard history (cliphist → Walker)
- `$mod + CTRL + L` — Lock screen (Hyprlock)

### Window management
- `$mod + H/L/K/J` (or arrows) — Move focus (left/right/up/down)
- `$mod + Shift + H/L/K/J` (or arrows) — Move window
- `$mod + 1-0` — Switch to workspace 1-10
- `$mod + Shift + 1-0` — Move window to workspace
- `$mod + S` — Toggle special (scratchpad) workspace
- `$mod + mouse_down` / `mouse_up` — Scroll through workspaces
- `$mod + left-click` / `right-click` — Drag / resize window

### Media & system
- `Print` — Screenshot region; `Shift + Print` — output (via `hyprshot`/`satty`)
- `$mod + Print` — Screen recording toggle
- `$mod + N` — Toggle notifications; `Shift + N` — clear; `Ctrl + N` — toggle DND
- `XF86AudioRaiseVolume` / `Lower` / `Mute` — Volume (via `wpctl`)
- `XF86MicMute` — Microphone mute toggle
- `XF86MonBrightnessUp` / `Down` — Brightness (via `brightnessctl`)
- `XF86AudioNext` / `Play` / `Pause` / `Prev` — Media (via `playerctl`)

### Productivity (shell)
- `Ctrl + F` — `herdr-sessionizer` (opens a Herdr workspace for a project)
- `Ctrl + Space` — accept zsh autosuggestion
- `Ctrl + Left/Right` — word jump in Kitty/Zsh

---
*Maintained by abdelrazik.*
