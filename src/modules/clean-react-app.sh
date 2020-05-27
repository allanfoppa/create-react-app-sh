#!/bin/bash

# EXCLUI ARQUIVOS QUE NÃO VÃO SER UTILIZADOS DO PROJETO
# obs: Os nomes dos arquivos são Case Sensitive

cd src/

    source "../components/clean-src-folder.sh"

cd ../

cd public/

    source "../components/clean-public-folder.sh"

cd ../

    source "../components/clean-root-folder.sh"
