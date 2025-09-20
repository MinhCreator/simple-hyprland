#!/bin/bash

sleep 1

WALLPAPER=$(swww query | sed -n 's/.*image: \(.*\)$/\1/p')

matugen image $WALLPAPER

python $HOME/.config/waypaper/get_wall.py

