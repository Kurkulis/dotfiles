#!/bin/sh

# current week as filename
filename=week_$(date "+%V").md

# current year
year=$(date "+%Y")

# get this weeks weekdays and their dates
mon=$(date --date="today" +"%a %d-%m-%Y")
tue=$(date --date="next Tuesday" +"%a %d-%m-%Y")
wed=$(date --date="next Wednesday" +"%a %d-%m-%Y")
thu=$(date --date="next Thursday" +"%a %d-%m-%Y")
fri=$(date --date="next Friday" +"%a %d-%m-%Y")
sat=$(date --date="next Saturday" +"%a %d-%m-%Y")
sun=$(date --date="next Sunday" +"%a %d-%m-%Y")

# whole path to file
file=~/notes/journal/$year/$filename

if [ -f "$file" ]; then
    vim $file;
else
    echo -e "## $mon\n\n\n\n## $tue\n\n\n\n## $wed\n\n\n\n## $thu\n\n\n\n## $fri\n\n\n\n## $sat\n\n\n\n## $sun\n\n\n" >> $file; vim $file;
fi
