#!/bin/sh

# current date as filename
filename=$(date "+%d_%m_%Y").md

# current month_year
month=$(date "+%m_%Y")

cd ~/notes
vim ~/notes/personal/daily/$month/$filename
