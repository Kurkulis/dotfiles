#!/bin/sh

# current date as filename
filename=$(date "+%d_%m_%Y").md

# current month_year
month=$(date "+%m_%Y")

# whole path to file
file=~/notes/personal/daily/$month/$filename

if [ -f "$file" ]; then
    vim $file;
else
    cp -n ~/.scripts/daily/daily_template.md $file; vim $file;
fi
