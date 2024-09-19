#!/bin/bash

# Função para verificar se o PulseAudio está instalado
verificar_pulseaudio() {
    if command -v pulseaudio &> /dev/null; then
        echo "PulseAudio está instalado."
    else
        echo "PulseAudio não está instalado. Instalando agora..."
        sudo apt update
        sudo apt install -y pulseaudio
    fi
}

# Função para verificar se o ALSA (Advanced Linux Sound Architecture) está instalado
verificar_alsa() {
    if command -v alsamixer &> /dev/null; then
        echo "ALSA está instalado."
    else
        echo "ALSA não está instalado. Instalando agora..."
        sudo apt update
        sudo apt install -y alsa-utils
    fi
}

# Função para verificar o status dos serviços de som
verificar_servicos_som() {
    echo "Verificando serviços de som..."
    sudo systemctl status pulseaudio --no-pager
    sudo systemctl status alsa-state --no-pager
}

# Verificar e instalar PulseAudio e ALSA se necessário
verificar_pulseaudio
verificar_alsa

# Verificar o status dos serviços de som
verificar_servicos_som

echo "Verificação concluída. Se houver problemas, você pode tentar reiniciar o sistema."
