#!/bin/bash
# https://www.stephenmwangi.com/obsidian-spaced-repetition/#manual-installation

yarn
yarn build

destination_path="$1"

if [ -z "$destination_path" ]; then
    echo "Please provide a destination path."
    exit 1
fi

cp ./main.js "$destination_path"
cp ./manifest.json "$destination_path"
cp ./styles.css "$destination_path"

echo "Files have been copied to $destination_path"