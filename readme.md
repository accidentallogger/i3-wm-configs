#i3wm
#TODO 
- fix the theme roundrobin 
- fix dual monitor setup
- add background wallpaper setup
- chaneg theme for popup

# i3WM Configuration

Minimal i3 setup focused on productivity with a few quality-of-life additions.

## Features

- Rofi application launcher
- Picom compositor
- Dunst notifications
- Custom i3status bar
- Google Keep shortcut
- New Firefox instance shortcut
- Screenshot shortcut
- Dynamic wallpaper with Feh
- Automatic dual-monitor profiles using Autorandr
- One-key theme switching (round-robin)

---

## Dependencies

```bash
sudo apt install \
i3 rofi picom feh dunst autorandr \
i3status network-manager-gnome \
xss-lock i3lock flameshot
```

(Optional)

- JetBrains Mono Nerd Font

---

## Keybindings

| Shortcut | Action |
|----------|--------|
| **Super + Enter** | Terminal |
| **Super + X** | Rofi (Applications) |
| **Super + Z** | Rofi (Run Command) |
| **Super + D** | dmenu |
| **Super + G** | Open Google Keep |
| **Print** | Screenshot |
| **Super + F** | Fullscreen |
| **Super + Shift + Q** | Close window |
| **Super + R** | Resize mode |
| **Super + Shift + C** | Reload i3 |
| **Super + Shift + R** | Restart i3 |
| **Super + T** | Cycle bar theme |

Workspace shortcuts:

- **Super + 1..0** → Switch workspace
- **Super + Shift + 1..0** → Move window to workspace

---

## Theme Switching

Themes live in

```
~/.config/i3/themes/
```

Press

```
Super + T
```

to cycle through every available theme.

The script automatically updates the i3 configuration and reloads i3.

---

## Dual Monitor

Profiles are managed using **autorandr**.

Create profiles:

Laptop only

```bash
autorandr --save laptop
```

Dual monitor

```bash
autorandr --save dual
```

Set laptop as fallback

```bash
autorandr --default laptop
```

Apply automatically

```bash
autorandr --change
```

If using the monitor watcher:

```bash
~/.config/i3/scripts/monitor-watch.sh
```

the layout changes automatically whenever a monitor is plugged in or removed.

---

## Status Bar

Displays:

- CPU usage
- RAM usage
- Free disk space
- WiFi SSID & signal
- Ethernet status
- Battery
- Date & Time

---

## Configuration Structure

```
~/.config/i3/
├── config
├── i3status/
│   └── config
├── themes/
│   ├── catppuccin
│   ├── gruvbox
│   ├── tokyonight
│   └── ...
└── scripts/
    ├── toggle-theme.sh
    └── monitor-watch.sh
```

---

## Reload Configuration

```
Super + Shift + C
```

or

```bash
i3-msg reload
```

Restart i3

```bash
i3-msg restart
```

---

Enjoy 🙂
