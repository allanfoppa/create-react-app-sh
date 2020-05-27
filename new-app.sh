#!/bin/bash

### CRIA UMA APLICAÇÃO EM REACT ###

## PARÂMETROS A SEREM PASSADOS
## $1 = Nome da aplicação

# CORES DO OUTPUT DO TERMINAL
source "./src/styles/terminal-text-color.sh"

# ENTRA NA PASTA DO PROJETO
cd $PWD

# CRIA O PROJETO
source "./src/install/create-react-app.sh"

# PERGUNTA SE QUER INSTALAR O REACT-ROUTER-DOM NO PROJETO
source "./src/install/react-router-dom.sh"

# PERGUNTA SE QUER INSTALAR O AXIOS NO PROJETO
source "./src/install/axios.sh"

# EXCLUI ARQUIVOS NÃO NECESSÁRIOS A ARQUITETURA PLANEJADA
source "./src/modules/clean-react-app.sh"

# ABRE O VSCODE COM O PROJETO CRIADO
source "./src/modules/components/open-vscode.sh"

exit 0