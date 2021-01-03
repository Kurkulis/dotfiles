#!/bin/sh

# filename
filename=week_$(date -d "last week" "+%V").md

# current year
year=$(date -d "last monday" "+%Y")

# whole path
path=~/notes/reflections/$year/weekly/$filename

# file extension
extension="${filename##*.}"

if [ -f "$path" ]; then
    vim $path;
else
   cp -n ~/.scripts/weekly/weekly_template.md $path;
fi
