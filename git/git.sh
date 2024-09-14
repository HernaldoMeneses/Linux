#!/bin/bash
#--------------------------------------------------------------------#
#     Org: Line by line
#   Title: Gits for Githubs
#      By: Hernaldo Meneses
#    Date: 24/10/2023 22:35
#Function: Facilitar utilização do git
#--------------------------------------------------------------------#
#
##sudo apt update
##sudo apt upgrade
##sudo apt-get install git
echo "Verificando a versão do git instalada"
echo "Enter to git --version"
read
git --version
echo "verificando Status atual git"
echo "Enter to git status"
read
echo "Status Atual git"
git status

echo "Enter to git add ."
var="S"
echo "Deseja add tudo ? S/n"
read var
if ["$var" !="S"]; then 
	echo "Saida" 
	break
fi
git add .
echo "Enter to commit -m 'Commit By ./HMeneses'"
read
git commit -m "Commit By ./HMeneses"
echo "enter to git puss"
read
git push

#/**
#-----------------------------------/** That's All **/--------------#

