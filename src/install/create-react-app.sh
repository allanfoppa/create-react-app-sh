#!/bin/bash

echo 'Vai dar o create react app com o nome' $1
# npx create-react-app $1

mkdir $1

echo 'Entrando na pasta' $1
cd $1

mkdir public && mkdir src

