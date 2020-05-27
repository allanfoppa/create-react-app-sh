#!/bin/bash

printf $textColorMagenta"Essa aplicação vai ser uma LandingPage [S/N]: "$endOfText
read responseLpa

case "$responseLpa" in
    s|S)
        echo $textColorBlue"O pacote do react-router-dom não será instalado."$endOfText
    ;;
    n|N)
        echo $textColorBlue"O pacote do react-router-dom será instalado."$endOfText
        npm install react-router-dom --save
    ;;
    *|"")
        echo $textColorRed"Aprende a ler o que está sendo pedido o praga dos inferno"$endOfText
    ;;
esac

# CRIA UMA PASTA PAGES EM SRC SE O PROJETO NÃO FOR LPA SIMPLES
source "../components/create-page-folder.sh"