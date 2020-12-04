#!/bin/sh

# current week as filename
filename=week_$(date "+%V").md

# current year
year=$(date "+%Y")

# whole path to file
file=~/notes/journal/$year/$filename

if [ -f "$file" ]; then
    vim $file;
else
    cp -n ~/.scripts/journal/journal_template.md $file; vim $file;
fi
