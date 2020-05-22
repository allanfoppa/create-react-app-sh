#!/bin/bash

### CRIA UMA APLICAÇÃO EM REACT

## CORES DO OUTPUT DO TERMINAL
textColorBlack=$(tput setaf 0)
textColorRed=$(tput setaf 1) # ERRO
textColorGreen=$(tput setaf 2) # SUCESSO
textColorYellow=$(tput setaf 3)
textColorBlue=$(tput setaf 4) # INFO
textColorMagenta=$(tput setaf 5) # PERGUNTA
textColorCyan=$(tput setaf 6)
endOfText=$(tput sgr 0)

## PARÂMETROS A SEREM PASSADOS
## $1 = nome da aplicação
## $2 = caminho da aplicação

## FUNÇÕES DO SCRIPT

# USA O GERADOR DE APP DO REACT PARA COMEÇAR O PROJETO
function createReactApp(){
    npx create-react-app $1
}

# INSTALA O PACOTE REACT-ROUTER-DOM
function installReactRouterDom(){
    printf $textColorMagenta"Essa aplicação vai ser uma LandingPage [S/N]: "$endOfText
    read responseLpa

    case "$responseLpa" in
        s|S)
            echo $textColorBlue"O pacote do react-router-dom não será instalado."$endOfText
        ;;
        n|N)
            cd $2$1
            echo $textColorBlue"O pacote do react-router-dom será instalado."$endOfText
            npm install react-router-dom --save
        ;;
        *|"")
            echo "Aprende a ler o que está sendo pedido o praga dos inferno"
        ;;
    esac
}

# INSTALA O PACOTE AXIOS
function installAxios(){
    printf $textColorMagenta"Essa aplicação vai ter a necessidade de consultas à API [S/N]: "$endOfText
    read responseApi

    case "$responseApi" in
        s|S)
            cd $2$1
            echo $textColorBlue"O pacote do axios será instalado."$endOfText
            npm install axios --save
        ;;
        n|N)
            echo $textColorBlue"O pacote do axios não será instalado."$endOfText
        ;;
        *|"")
            echo "Aprende a ler o que está sendo pedido o praga dos inferno"
        ;;
    esac
}

# EXCLUI ARQUIVOS QUE NÃO VÃO SER UTILIZADOS DO PROJETO
function cleanSrcFolder(){

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
}

function cleanPublicFolder(){

    files=(
        logo192.png
        logo512.png
        manifest.json
        robots.txt
    )

    for file in "${files[@]}"; do
        rm $file
    done
}

function cleanMainFolder(){

    files=(
        README.md
    )

    for file in "${files[@]}"; do
        rm $file
    done
}

# NAVEGA ENTRE DIRETORIOS PARA EXCLUIR OS ARQUIVOS
function cleanProject(){
    cd $2$1/src/
    cleanSrcFolder

    cd ../

    cd $2$1/public
    cleanPublicFolder

    cd ../

    cleanMainFolder

    vscodePath=$2$1
}

# ENTRA NA PASTA DO PROJETO
cd $2

# CRIA O PROJETO
createReactApp $1

# INSTALA O REACT-ROUTER-DOM NO PROJETO
installReactRouterDom

# INSTALA O AXIOS NO PROJETO
installAxios

# LIMPA O PROJETO
cleanProject $1 $2

# CRIA UMA PASTA PAGES EM SRC SE O PROJETO NÃO FOR LPA SIMPLES
if [ $responseLpa == 'n' ] || [ $responseLpa == 'N' ]; then
    cd src
        mkdir pages

    cd ../
fi

# CRIAR UMA PASTA SERVICES EM SRC SE O PROJETO FOR CONSUMIR API
if [ $responseApi == 's' ] || [ $responseApi == 'S' ]; then
    cd src
        mkdir services
            cd services
            # CRIAR UM ARQUIVO API.JS EM SERVICES
                touch api.js
    cd ../
fi

# ABRE O VSCODE
code $vscodePath

exit 0