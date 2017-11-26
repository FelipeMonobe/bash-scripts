#!/bin/bash

# Exports PACMAN, AUR and NPM packages to FOLDER in home dir

# Usage:
# ./export-packages.sh

FOLDER="export-packages"

mkdir ~/$FOLDER
pacman -Qqe | grep -Fvx "$(pacman -Qqm)" > ~/$FOLDER/pacman.pkgs
pacman -Qqm > ~/$FOLDER/aur.pkgs
npm ls -g --parseable --depth=0 | sed '1d' | awk '{gsub(/\/.*\//,"",$1); print}' > ~/$FOLDER/npm.pkgs
