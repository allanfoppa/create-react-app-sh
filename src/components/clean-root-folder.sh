#!/bin/bash

files=(
    README.md
)

for file in "${files[@]}"; do
    rm $file
done
