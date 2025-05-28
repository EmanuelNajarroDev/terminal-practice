#!/bin/bash

for file in test_files/*; do

ext="${file##*.}"

case "$ext" in
 jpg) folder="images";;

md|txt) folder="docs";;

sh) folder="scripts";;

*) continue ;; 

esac

#Create the folder if it doesn't exist
mkdir -p "files/$folder"

#Move the file into the appropriate folder
mv "$file" "files/$folder/"

done




