#!/bin/bash
#-------------------------------------------------------------#
#     Org: Line by line
#   Title: ls - list
#      By: Hernaldo Meneses
#    Date: 23/10/2023 00:33
#Function: Exemplificar a utilização do comando list ls.
#-------------------------------------------------------------#
#
ls			#listar Arq. Direc. no Atual
ls -a			#incluir os ocultos
ls -l			#incluir detalhes (metadados)
ls -r			#ordem alfabetica inversa (reverse)
ls -t			#ordem tempo  modificação (time)
ls -S			#Ordem Tamanho (Size)
ls -d */		#Apenas Diretorios
ls -R			#Diretóriso e subdiretóriso (Recursivo)
ls -alr			#Combinação de opções
ls | grep '\.txt$'	#Apenas Aquivos com extensão .txt
ls --color 		#Colorir *** obs depende da config.
ls -F			#Listagem agrupada por tipo
ls -p --color		#Agupada por tipo e colorido
ls -lh			#Tamanho legivel (legibly by human)
ls ../			#Listar um diretório antes (do atual)
ls ../../		#Listar 2 diretórios antes
#
#/** O Comando 'ls' (Listar Arquivos e Diretorios)
#/** Uma Ferramente fundamental para navegar nos Sys Linux
#/** **Atenção** ****Não decore comandos****
#/** Com o tempo, conforme a necessidade e utilidade
#/** Naturalmente os comandos se internalizam...
#/** O mais importante é conhecer suas funcionalidades
#/** Implementar e por a mão na massa. Hands On
#/** Listar Arquivos e diretórios é o que há de mais comum
#/** Devido sua imensa utilidade vamos iniciar com
#/** ls + Enter #Just do it.
#-----------------------------------/** That's All **/--------#

