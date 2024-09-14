#!/bin/bash
#-------------------------------------------------------------#
#     Org: Line by line
#   Title: Config Shell (bash)
#      By: Hernaldo Meneses
#    Date: 22/10/2023
#Function: Adm variavel de ambiente $SHELL.
#-------------------------------------------------------------#
#
#SHELL Atual
echo $SHELL
echo 
echo "-----^-Shell Atual-------Shells Disponíveis----\\/-"
echo 
#
#Listar SHELLS Disponíveis.
cat /etc/shells 
#
#Alterando o valor da $SHELL
##-ChangeShell -Standart /bin/bash
##-MudarSHELL  -Padrao	/bin/bash
chsh -s /bin/bash
#
#Alrerando de modo forçado.. (Atençao!!!)
SHELL=/bin/bash #just in case..
echo "Change to:"
echo "Mudada para:"
echo $SHELL
#
#/** A shell é a principal interface (user - Sys Operacional)
#/** Importancia em configurar corretamente
#/** 1. Usuabilidade
#/** 2. Personalização
#/** 3. Automação
#/** 4. Segurança
#/** 5. Compatibilidade 
#-----------------------------------/** That's All **/--------#

