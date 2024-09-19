#!/bin/bash
#Preparing kernel headers
sudo apt-get update # Update our distibution Debian
#uname # See whats OS
#uname -r # See Version of OS
# $(uname -r) Substitui o comando pelo seu resultado
sudo apt-get install linux-headers-$(uname -r) # install linux-headers for OS version

# Verficar a configuração do Kernel
#usr - Unix Sistem Resorch 
#src - source
#ls /usr/src # Armazenar codigo fonte de pacotes instalados e arquivos de desenvolvimento
# Navegue até o diretório do código-fonte do kernel
cd /usr/src/linux-headers-$(uname -r)  # Ajuste o caminho conforme necessário
ls .config
