#!/bin/bash

permissions=(
    ./src/components/clean-public-folder.sh
    ./src/components/clean-root-folder.sh
    ./src/components/clean-src-folder.sh
    ./src/components/create-api-file.sh
    ./src/components/create-page-folder.sh
    ./src/components/open-vscode.sh
    ./src/install/axios.sh
    ./src/install/create-react-app.sh
    ./src/install/react-router-dom.sh
    ./src/modules/clean-react-app.sh
    ./src/modules/create-services-folder.sh
)

for permission in "${permissions[@]}"; do
    chmod +x $permission
done