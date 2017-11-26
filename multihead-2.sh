#!/bin/bash

# Extends LVDS with a VGA
# 1600x900 resolution monitor
# on the right side

# Usage:
# ./multihead-2.sh

xrandr --newmode "1600x900" 118.25  1600 1696 1856 2112  900 903 908 934 -hsync +vsync
xrandr --addmode VGA1 1600x900

xrandr --output VGA1 --mode 1600x900 --output LVDS1 --auto --left-of VGA1