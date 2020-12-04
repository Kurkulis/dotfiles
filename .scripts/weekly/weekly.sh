#!/bin/sh

# filename
filename=week_$(date -d "last week" "+%V").md

# current year
year=$(date "+%Y")

# whole path
path=~/notes/reflections/weekly/$year/$filename

# file extension
extension="${filename##*.}"

if [ "$extension" == "md" ]; then
   cp -n ~/.scripts/weekly/weekly_template.md $path;
else
  echo "Template not found"
  exit
fi

vim $path
