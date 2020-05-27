#!/bin/bash

if [ $responseApi == 's' ] || [ $responseApi == 'S' ]; then
    cd src
        mkdir services
            cd services
                # CRIA O ARQUIVO DE CONEXÃO COM O BACKEND
                source "../components/create-api-file.sh"
    cd ../
fi