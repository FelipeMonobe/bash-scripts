#!/bin/bash

# Extends LVDS with a VGA
# 1920x1080 resolution monitor
# on the left side

# Usage:
# ./multihead-4.sh

xrandr --newmode "1920x1080_60.00"  173.00  1920 2048 2248 2576  1080 1083 1088 1120 -hsync +vsync
xrandr --addmode VGA1 1920x1080

xrandr --output LVDS1 --primary --auto --output VGA1 --left-of LVDS1 --mode 1920x1080
