#!/bin/bash
#-------------------------------------------------------------#
#     Org: Line by line
#   Title: find
#      By: Hernaldo Meneses
#    Date: 30/10/2023 22:43
#Function: Exemplificar a utilização do comando list find.
#-------------------------------------------------------------#
#
echo "		--Buscador de arquivos txt--"
filename="Nome do Arquivo"
echo "Digite o nome do arquivo"
read filename
touch ~/"$filename"
find /home -name "$filename"+"txt"
echo "Tecle enter para continuar a busca"
rm ~/"$filename"
read
echo "Buscar todos files ou arquivos recursivamente"
find /home -type f
echo "Tecle enter para buscar por diretórios."
read
#All directoryes
find /home -type d
echo "Enter para finalizar"
read
#all txt files
find /home -type f -name "*.txt"
#modify time last seven days
find /home -type f -mtime -7
#Find by size +Megabyte
find /home -type f -size +1M
#executar comando em arquivo encontrado
echo "Digite o comando a ser exec no arquivo encontrado."
read cmd_
find /home -type f -exec "$cmd_" {} \;
#------------------------------------------------Linux-Freedom

