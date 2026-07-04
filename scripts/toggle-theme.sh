#!/usr/bin/env bash

CONFIG="$HOME/.config/i3/config"
THEMES="$HOME/.config/i3/themes"

themes=(
    catppuccin
    gruvbox
    tokyonight
)

STATE="$THEMES/.current"

if [ ! -f "$STATE" ]; then
    echo 0 > "$STATE"
fi

current=$(cat "$STATE")
next=$(( (current + 1) % ${#themes[@]} ))

theme="${themes[$next]}"

awk '
BEGIN{skip=0}
/# BEGIN THEME/{print;skip=1;system("cat '"$THEMES"'/'"$theme"'");next}
/# END THEME/{skip=0}
!skip
' "$CONFIG" > "$CONFIG.tmp"

mv "$CONFIG.tmp" "$CONFIG"

echo "$next" > "$STATE"

i3-msg reload >/dev/null

notify-send "Theme" "$theme"
