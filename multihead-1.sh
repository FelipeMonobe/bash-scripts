#!/bin/bash

# Sets all external video output off and
# switches back to LVDS

# Usage:
# ./multihead-1.sh

xrandr --output VGA1 --off
xrandr --output HDMI1 --off

xrandr --output LVDS1 --mode 800x600
xrandr --output LVDS1 --mode 1366x768
