#!/bin/bash
#-------------------------------------------------------------#
#     Org: Line by line
#   Title: Config SSH (Security Shell) key GitHub
#      By: Hernaldo Meneses
#    Date: 23/10/2023 22:06
#Function: Configurar Chave SSH para Conexão Git - GitHub.
#-------------------------------------------------------------#
#
echo "-- Bem vindo a configuração de ssh para o GitHub"
echo "Tecle enter para listar as chaves existentes no seu Sys"
read
ls -al ~/.ssh		#Chaves eventuais previamente criadas
echo "Tecle Enter para gerar uma nova chave"
read
ssh-keygen -t ed25519 -C "To GitHub conex via Git"
echo "Escolha um nome para o arquivo da chave ou deixe vazio"
echo "Após Enter o arquivo será (for default) salvo em:"
echo "/home/username/.ssh"
echo "Escolha uma senha ou deixe vazio por default ./Enter"
echo "Enter para inicializar o Agente SSH"
read
eval "$(ssh-agent -s)"
echo "Tecle enter para adicionar a chave ao agente"
read
ssh-add ~/.ssh/id_ed25519
echo "Agora criaremos o ssh para segurança do hadware"
echo "Enter para criar ssh segurançao hadware"
read
ssh-keygen -t ed25519-sk -C "To GiHub segurança hadware"
echo "Agora você precisará colar o conteúdo da chave criada"
echo "No local reservado na plataforma do GitHub."
echo "Tecle enter para imprimir a chave."
read
cat ~/.ssh/id_ed25519.pub
echo "após inserir a chave na plataforma do GitHub"
echo "Tecle enter e teste a conexão"
ssh -T git@github.com
echo
echo "Linear__"
#
#/** https://github.com
#/** para a comunicação segura entre sua máquina e a plataforma
#/** é necessário gerar e configurar a chave ssh 
#-----------------------------------/** That's All **/--------#

