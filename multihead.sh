#!/bin/bash

# Executes chosen multihead configurations

# Usage:
# ./multihead.sh 1

# Default LVDS only
if [ $1 -eq "1" ]; then
  xrandr --output VGA1 --off;
  xrandr --output HDMI1 --off;

  xrandr --output LVDS1 --mode 1366x768;
fi

# [Extension] LVDS + 1600x900 VGA
if [ $1 -eq "2" ]; then
  xrandr --newmode "1920x1080_60.00"  173.00  1920 2048 2248 2576  1080 1083 1088 1120 -hsync +vsync
  xrandr --addmode VGA1 1920x1080

  xrandr --output VGA1 --mode 1920x1080 --output LVDS1 --auto --left-of VGA1
fi

if [ $1 -gt "2" ]; then
  xrandr --newmode "1920x1080_60.00"  173.00  1920 2048 2248 2576  1080 1083 1088 1120 -hsync +vsync
  xrandr --addmode HDMI1 1920x1080

  # [Duplication] LVDS + 1920x1080 HDMI
  if [ $1 -eq "3" ]; then
    xrandr --output HDMI1 --mode 1920x1080
  fi

  # [Extension] 1920x1080 VGA + LVDS
  if [ $1 -eq "4" ]; then
    xrandr --output LVDS1 --primary --auto --output VGA1 --left-of LVDS1 --mode 1920x1080
  fi

  # [Extension] LVDS + 1920x1080 HDMI
  if [ $1 -eq "5" ]; then
    xrandr --output HDMI1 --primary --mode 1920x1080 --output LVDS1 --mode 1366x768 --left-of HDMI1
  fi
fi
