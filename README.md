# Dotfiles

A collection of configuration files for a modern, aesthetic, and productive Arch Linux environment using Hyprland and Waybar.

## 🚀 Overview

- **Window Manager:** [Hyprland](https://hyprland.org/) (Wayland compositor)
- **Bar:** [Waybar](https://github.com/Alexays/Waybar) (Modular and highly customized)
- **Terminal:** [Kitty](https://sw.kovidgoyal.net/kitty/)
- **Shell:** [Zsh](https://www.zsh.org/) with [Starship](https://starship.rs/) prompt
- **Multiplexer:** [Tmux](https://github.com/tmux/tmux) with [TPM](https://github.com/tmux-plugins/tpm)
- **Launcher:** [Wofi](https://hg.sr.ht/~scoopta/wofi)
- **File Manager:** Nautilus
- **Browser:** Brave
- **Themes:** Catppuccin (Frappe, Latte, Macchiato, Mocha) & Gruvbox

## 📦 Software & Tools

A list of core applications used in this setup:

| Category | Application |
| :--- | :--- |
| **Window Manager** | Hyprland |
| **Status Bar** | Waybar |
| **Terminal** | Kitty |
| **Shell** | Zsh + Starship |
| **Launcher** | Wofi |
| **File Manager** | Nautilus |
| **Browser** | Brave |
| **Editor** | Neovim (`nvim`) |
| **Multiplexer** | Tmux |
| **Notifications** | SwayNC |
| **Idle Daemon** | Hypridle |
| **Lock Screen** | Hyprlock |
| **Wallpaper** | Hyprpaper |
| **Screenshot** | Hyprshot / Custom Script |
| **Audio** | Wireplumber / Pipewire |
| **Brightness** | Brightnessctl |
| **Media Keys** | Playerctl |
| **Polkit** | Hyprpolkitagent |
| **Network** | NetworkManager (nm-applet) |

## 📁 Structure

```text
.
├── .config/
│   ├── hypr/       # Hyprland, Hypridle, Hyprlock, Hyprpaper
│   ├── kitty/      # Terminal configuration & themes
│   ├── waybar/     # Modular status bar with custom scripts
│   └── wofi/       # Application launcher styles
├── .local/scripts/ # Custom utility scripts (screenshot, tmux-sessionizer)
├── .tmux.conf      # Tmux configuration
├── .zshrc          # Zsh shell configuration
└── .bashrc         # Bash fallback configuration
```

## 🛠️ Installation

### Prerequisites

This setup is primarily designed for **Arch Linux**.

Ensure you have the following installed:
- `hyprland`
- `waybar`
- `kitty`
- `wofi`
- `zsh`
- `tmux`
- `starship`
- `nautilus`
- `brave-bin` (AUR)

### Dependencies

Run the included install script for Waybar dependencies:

```bash
cd .config/waybar
./install
```

### Applying Configurations

You can use [GNU Stow](https://www.gnu.org/software/stow/) to manage these dotfiles:

```bash
# From the root of this repository
stow .
```

Or manually symlink the files to your home directory.

## ✨ Features

- **Modular Waybar:** Easily enable/disable modules in `config.jsonc`. Includes custom scripts for updates, power management, and more.
- **Theming:** Toggle between different Catppuccin flavors and Gruvbox in Waybar and Kitty.
- **Productivity:**
  - `tmux-sessionizer`: A custom script for rapid project switching.
  - `screenshot`: Custom script for capturing the screen.
  - Zsh plugins for autosuggestions and syntax highlighting.

## ⌨️ Keybindings

- `$mod` = `SUPER` (Windows Key)

### General
- `$mod + Return` - Open Terminal (**Kitty**)
- `$mod + Q` - Close active window
- `$mod + E` - Open Application Launcher (**Wofi**)
- `$mod + R` - Open File Manager (**Nautilus**)
- `$mod + V` - Toggle Floating
- `$mod + F` - Toggle Fullscreen
- `$mod + M` - Power Menu / Exit Hyprland
- `CTRL + ALT + L` - Lock Screen (**Hyprlock**)

### Window Management
- `$mod + H/L/K/J` - Move focus (Left, Right, Up, Down)
- `$mod + Shift + H/L/K/J` - Move window (Left, Right, Up, Down)
- `$mod + 1-0` - Switch to workspace 1-10
- `$mod + Shift + 1-0` - Move window to workspace 1-10

### Media & System
- `Print` - Screenshot region (**Hyprshot**)
- `Shift + Print` - Screenshot output (**Hyprshot**)
- `$mod + Print` - Screenshot window (**Hyprshot**)
- `XF86AudioRaiseVolume` - Volume Up (5%)
- `XF86AudioLowerVolume` - Volume Down (5%)
- `XF86AudioMute` - Mute Toggle
- `XF86MonBrightnessUp` - Brightness Up (5%)
- `XF86MonBrightnessDown` - Brightness Down (5%)

### Productivity (Shell/Tmux)
- `$mod + F` (in Shell) - Run `tmux-sessionizer`
- `$mod + S` (Tmux Prefix) - Custom Prefix

---
*Maintained by abdelrazik.*
