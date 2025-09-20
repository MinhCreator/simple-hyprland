#!/usr/bin/env bash
#    __            __   _         ___             
#   / /_____ __ __/ /  (_)__  ___/ (_)__  ___ ____
#  /  '_/ -_) // / _ \/ / _ \/ _  / / _ \/ _ `(_-<
# /_/\_\\__/\_, /_.__/_/_//_/\_,_/_/_//_/\_, /___/
#          /___/                        /___/     
# 

# -----------------------------------------------------
# Get keybindings location based on variation
# -----------------------------------------------------
# config_file=$(<~/.config/hypr/configs/keybinds.conf)
# config_file=${config_file//source = ~//home/$USER}

# -----------------------------------------------------
# Path to keybindings config file
# -----------------------------------------------------
# echo "Reading from: $config_file"
# 
# keybinds=$(awk -F'[=#]' '
    # $1 ~ /^bind/ {
        # Replace the string "$mainMod" with "SUPER" (for the super key)
        # gsub(/\$mainMod/, "SUPER", $0)
# 
        # Remove "bind" and extra spaces, if any, at the beginning of the line
        # gsub(/^bind[[:space:]]*=+[[:space:]]*/, "", $0)
# 
        # Split the keybinding part (e.g., "Mod1,Return") using a comma
        # split($1, kbarr, ",")
# 
        # Format the keybinding and associated command and prepare for output:
        # Concatenate the two keybinding keys (e.g., "Mod1" + "Return") and append the command
        # print kbarr[1] "  + " kbarr[2] "\r" $2
    # }
# ' "$config_file")
# 
# sleep 0.2
# rofi -dmenu -i -markup -eh 2 -replace -p "Keybinds" -config ~/.config/rofi/config-compact.rasi <<<"$keybinds"
# 

#!/bin/bash

HYPR_CONF="$HOME/.config/hypr/configs/keybinds.conf"

# extract the keybinding from hyprland.conf
mapfile -t BINDINGS < <(grep '^bind=' "$HYPR_CONF" | \
    sed -e 's/  */ /g' -e 's/bind=//g' -e 's/, /,/g' -e 's/ # /,/' | \
    awk -F, -v q="'" '{cmd=""; for(i=3;i<NF;i++) cmd=cmd $(i) " ";print "<b>"$1 " + " $2 "</b>  <i>" $NF ",</i><span color=" q "gray" q ">" cmd "</span>"}')

CHOICE=$(printf '%s\n' "${BINDINGS[@]}" | rofi -dmenu -i -markup-rows -p "Hyprland Keybinds:")

# extract cmd from span <span color='gray'>cmd</span>
CMD=$(echo "$CHOICE" | sed -n 's/.*<span color='\''gray'\''>\(.*\)<\/span>.*/\1/p')

# execute it if first word is exec else use hyprctl dispatch
if [[ $CMD == exec* ]]; then
    eval "$CMD"
else
    hyprctl dispatch "$CMD"
fi
