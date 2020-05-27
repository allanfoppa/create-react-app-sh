#!/bin/bash

files=(
    App.css
    App.test.js
    index.css
    logo.svg
    serviceWorker.js
    setupTests.js
)

for file in "${files[@]}"; do
    rm "$file"
done