#!/bin/bash

# Atualizar a lista de pacotes disponíveis
sudo apt-get update

# Atualizar os pacotes instalados para a versão mais recente
sudo apt-get upgrade -y

# (Opcional) Atualizar a distribuição para a versão mais recente
# sudo apt-get dist-upgrade -y

# (Opcional) Remover pacotes desnecessários
sudo apt-get autoremove -y

