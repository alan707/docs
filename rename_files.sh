#!/bin/bash

# Author: Alan Mond
#
# Description:
# This script will recursively append "new string" at the end of every file that ends in .php.  In its current form it will only print what the output will look like.

# Usage:
# Step 1: cd inside directory you'd like to change filenames recursively
# step 2: run ./rename_files.sh
# Step 3: review to make sure filenames will me changed as you expected
# Step 4: remove "echo", save, and re-run script to actually change filenames in the directory.

for f in *.php; do
    echo mv "$f" "${f%.php}_new_string.php"
done
