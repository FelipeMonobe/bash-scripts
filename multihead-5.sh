#!/bin/bash

# Extends LVDS with an HDMI
# 1920x1080 resolution monitor
# on the right side

# Usage:
# ./multihead-5.sh

xrandr --output HDMI1 --primary --mode 1920x1080 --output LVDS1 --mode 1366x768 --left-of HDMI1
