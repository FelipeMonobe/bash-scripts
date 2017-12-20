#!/bin/bash

# Creates a folder with name passed as argument
# then creates numeric folders to each month
# and for each month folder, creates subfolders
# defined in SUBFOLDERS variable

# Usage:
# ./folder-structure.sh root-folder-name x-subfolder-name y-subfolder-name z-subfolder-name

mkdir $1

for i in `echo {01..12}`; do
  mkdir $1/$i
  for j in "${@:2}"; do
    mkdir $1/$i/$j
  done
done
