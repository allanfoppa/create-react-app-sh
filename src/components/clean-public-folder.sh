#!/bin/bash

files=(
    logo192.png
    logo512.png
    manifest.json
    robots.txt
)

for file in "${files[@]}"; do
    rm $file
done