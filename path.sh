#!/bin/bash

# Function to count the number of executable files in a directory
count_executables() {
    local_dir=$1
    counter=0
    if [ -d "$local_dir" ] && [ -r "$local_dir" ]; then
        for file in $(find "$local_dir" -maxdepth 1 -type f); do
            if [ -x "$file" ]; then
                counter=$((counter+1))
            fi
        done
    fi
    echo "$counter"
}

# Changing the delimiters in $PATH
old_IFS=$IFS
IFS=':'

for folder in $PATH; do
    executables=$(count_executables "$folder")
    echo "The folder $folder has $executables executable files."
done

# Reset IFS
IFS=$old_IFS
