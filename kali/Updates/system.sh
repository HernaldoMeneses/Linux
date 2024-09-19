#!/bin/bash

# Script para atualizar o sistema com apt-get dist-upgrade

# Definir o log do arquivo para registrar a saída
LOGFILE="/var/log/system_update.log"

# Função para registrar mensagens no log
log_message() {
    echo "$(date +'%Y-%m-%d %H:%M:%S') - $1" >> $LOGFILE
}

# Início do script
log_message "Início da atualização do sistema."

# Atualizar a lista de pacotes
log_message "Atualizando a lista de pacotes..."
if sudo apt-get update >> $LOGFILE 2>&1; then
    log_message "Lista de pacotes atualizada com sucesso."
else
    log_message "Falha ao atualizar a lista de pacotes."
    exit 1
fi

# Realizar a atualização do sistema
log_message "Iniciando a atualização do sistema com dist-upgrade..."
if sudo apt-get dist-upgrade -y >> $LOGFILE 2>&1; then
    log_message "Atualização do sistema concluída com sucesso."
else
    log_message "Falha na atualização do sistema."
    exit 1
fi

# Limpeza de pacotes desnecessários
log_message "Removendo pacotes desnecessários..."
if sudo apt-get autoremove -y >> $LOGFILE 2>&1; then
    log_message "Pacotes desnecessários removidos com sucesso."
else
    log_message "Falha ao remover pacotes desnecessários."
    exit 1
fi

# Limpeza de arquivos de pacotes baixados
log_message "Limpando arquivos de pacotes baixados..."
if sudo apt-get clean >> $LOGFILE 2>&1; then
    log_message "Arquivos de pacotes baixados limpos com sucesso."
else
    log_message "Falha ao limpar arquivos de pacotes baixados."
    exit 1
fi

# Finalização do script
log_message "Atualização do sistema concluída."

exit 0
