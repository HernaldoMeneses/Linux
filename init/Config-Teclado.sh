#!/bin/bash
#-------------------------------------------#
#     Org: Line by line
#   Title: Config Teclado Abnt2 (Brasil)
#      By: Hernaldo Meneses
#    Date: 22/10/2023
#Function: Adm Layout Teclado.
#------------------------------------------#
#
#init_.
#Listar Laoyts Disponíveis
localectl list-x11-keymap-layouts
#
#config.
sudo localectl set-x11-keymap br
#
#/** A depender da configuração do teclado
#/** Comandos e Caracters Especiais
#/** Podem divergir, ocasionando 
#/** Erros de digitação
#/** E uma experiência ineficaz com Sistemas
#/** 
#/** Outro ponto relevante é a configuração
#/** da $SHELL Utilizada
#/** Utilizaremos na jornada
#/** Bash (Bourne-Again Shell)
#/** Shell Padrão do Linux
#/** 
#/** Aprenda a Configurar a $SHELL ->
#----------------/** That's All **/--------#

