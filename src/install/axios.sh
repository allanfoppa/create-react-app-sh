#!/bin/bash

printf $textColorMagenta"Essa aplicação vai ter a necessidade de consultas à API [S/N]: "$endOfText
read responseApi

case "$responseApi" in
    s|S)
        echo $textColorBlue"O pacote do axios será instalado."$endOfText
        npm install axios --save
    ;;
    n|N)
        echo $textColorBlue"O pacote do axios não será instalado."$endOfText
    ;;
    *|"")
        echo $textColorRed"Aprende a ler o que está sendo pedido o praga dos inferno"$endOfText
    ;;
esac

# CRIAR UMA PASTA SERVICES EM SRC SE O PROJETO FOR CONSUMIR API
source "../modules/create-services-folder.sh"