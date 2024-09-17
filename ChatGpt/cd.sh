#!/bin/bash
#--------------------------------------------------------------------#
#     Org: Line by line
#   Title: cd - change directory
#      By: Hernaldo Meneses
#    Date: 24/10/2023 22:35
#Function: Exemplificar a utilização do comando cd.
#--------------------------------------------------------------------#
#
cd			#diretório inicial raiz ~ pode ser cd ~
cd /Desktop		# vai para Desktop
cd ..			#retorna um nivel de diretorio
cd -			#alternar entre diretórios
cd -L			#Seguir links simbolicos
cd -P			#Seguir apenas caminhos Phisicos
cd -e 			#Exibir sms de erro na inexistência
cd -q			#quiet erro desativa a sms

cd ../			#retorna um diretório antes (do atual)
cd ../../../../		#Retorna 4 diretórios antes
cd ~/proje*		#navegando até o primeiro encontrado
cd $OLDPWD		#Rerotna para o diretório anterior.
cd "$(dirname "$0")"	#diretório do Script atual

cd "$(cat direc.txt)" 	#indo para paminho gravado em direc.txt
cd "$(ls -lt | awk '/^d/{print $NF; exit}')"
cd "$(dirname "$(find /path -type f -name "file_Seaching")")"
cd "$(find /path -type d -name "*padrao*")"
#
#/** O Comando cd permite ao usuario linux navegar pelos diretorios
#/** tornando assim sua utilização essenssial para administraçao
#/** e implementação de recursos no sitema.
#/** A capacidade de utilização de combinação de parametros com outros
#/** comando traz eficiência e eficácia nas tarefas de utilização e
#/** Administração de sistemas Linux. 
#-----------------------------------/** That's All **/--------------#

