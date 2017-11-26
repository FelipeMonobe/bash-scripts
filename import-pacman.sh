#!/bin/bash

# Installs all PACMAN packages listed with export-packages.sh

# Usage:
# ./import-pacman.sh

FOLDER="export-packages"

xargs pacman -S --needed --noconfirm < ~/$FOLDER/pacman.pkgs
