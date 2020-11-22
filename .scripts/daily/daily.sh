#!/bin/sh

# current date as filename
filename=$(date "+%d_%m_%Y").md

# current month_year
month=$(date "+%m_%Y")

# whole path
path=~/notes/personal/daily/$month/$filename

# file extension
extension="${filename##*.}"

if [ "$extension" == "md" ]; then
   cp -n ~/.scripts/daily/daily_template.md $path;
else
  echo "Template not found"
  exit
fi

vim $path
