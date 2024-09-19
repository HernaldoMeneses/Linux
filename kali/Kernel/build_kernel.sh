#!/bin/bash

# Atualiza a lista de pacotes
echo "Atualizando a lista de pacotes..."
sudo apt-get update

# Instala pacotes necessários para desenvolvimento do kernel
echo "Instalando pacotes necessários..."
sudo apt-get install -y build-essential libncurses5-dev bison flex libssl-dev

# Instala o pacote de código-fonte do kernel
echo "Instalando o código-fonte do kernel..."
sudo apt-get install -y linux-source

# Navega para o diretório /usr/src
cd /usr/src

# Verifica se o diretório do código-fonte está presente
if [ -d "linux-source-$(ls /usr/src | grep linux-source | cut -d'-' -f2)" ]; then
    echo "O código-fonte do kernel já está instalado."
else
    echo "Baixando e extraindo o código-fonte do kernel..."
    # Baixa o código-fonte do kernel (substitua <versão> pela versão desejada)
    wget https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.10.9.tar.xz
    tar -xvf linux-6.10.9.tar.xz
fi

# Navega para o diretório do código-fonte do kernel
cd linux-6.10.9

# Configura o kernel usando configuração mínima
echo "Configurando o kernel com opções mínimas..."
# Cria uma configuração mínima baseada na configuração padrão
make defconfig
# Ajusta a configuração mínima usando menuconfig
make menuconfig

# Constrói o kernel
echo "Construindo o kernel..."
make -j$(nproc)  # Usa múltiplos núcleos para acelerar a construção

# Instala o kernel e módulos
echo "Instalando o kernel..."
sudo make modules_install
sudo make install

# Limpeza
echo "Limpando arquivos temporários..."
make clean

# Fim do script
echo "Processo concluído. O kernel foi configurado e construído."
