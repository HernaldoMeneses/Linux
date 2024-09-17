#!/bin/bash
# Nome do Script: make_executable.sh
# Descrição: torna excripts executaveis
# Autor: Hernaldo Meneses
# Data: 12-09-2024

echo "Digite o nome do arquivo:"
read file_
# Verifica se o arquivo existe
if [ -f "$file_" ]; then
	# Torna o arquivo executavel
	chmod +x "$file_"
	echo "O arquivo '$file_' agora é executável."
else
	echo "Erro: O arquivo '$file_' não foi encontrado."
fi
