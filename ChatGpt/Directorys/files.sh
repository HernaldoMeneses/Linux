#!/bin/bash
#--------------------------------------------------------------------#
#     Org: Line by line
#   Title: Files and Directory 1
#      By: Hernaldo Meneses
#    Date: 25/10/2023 06:56
#Function: Manipular Diretórios Level 1
#--------------------------------------------------------------------#
#
echo "criando uma pasata vazia com nome name_dir e removendo em seguida."
mkdir name_dir
echo "foi criado em seguida listado e sera excluido apos o Enter"
ls 
read 
rmdir name_dir
ls 
read 
echo "agora recriaremos o diretório e logo em seguida"
echo "crearemos um arquivo inteno tecle enter"
read
mkdir name_dir 
ls
echo "Enter para entrar no diretetorio e criar o arquivo"
read 
cd name_dir 
touch new_.txt 
ls
echo "agora sairemos do diretóiros e tentaremos remove-lo novamente"
read 
cd ..
rmdir name_dir
read 
echo ""
echo "Ou seja para remover diretórios não vazios precisaremos da"
echo "Opção rcursiva e forçada"
echo "tecle enter para executar rm -rf name_dir"
read
rm -rf name_dir
ls 
echo "Linear_"
#
#/** A manipulação de arquivos e pastas de maneira eficiente
#/** Trará ao usuário Linux segurança, conveniência e disponibilidade
#/** das informações armazenadas.
#/** Para usuários mais avançados a manipulação de arquivos e pastas
#/** são cruciais para o desenvolvimento de Softwares.
#/** rm -rf remove recursive and forced
#-----------------------------------/** That's All **/--------------#

