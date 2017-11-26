#!/bin/bash

# Installs all NPM packages listed with export-packages.sh

# Usage:
# ./import-npm.sh

FOLDER="export-packages"

xargs npm install --global < ~/$FOLDER/npm.pkgs
