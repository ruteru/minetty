#!/bin/bash

set -e

# Actualizar el sistema
echo "Actualizando el sistema..."
sudo apt-get update
sudo apt-get upgrade -y

# Instalar Python 3.11
echo "Instalando Python 3.11..."
sudo apt-get install -y software-properties-common
sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt-get update
sudo apt-get install -y python3.11 python3.11-venv python3.11-dev

# Instalar Podman
echo "Instalando Podman..."
sudo apt-get update
sudo apt-get install -y podman

# Instalar Vagrant
echo "Instalando Vagrant..."
sudo apt-get install -y wget
wget https://releases.hashicorp.com/vagrant/2.3.5/vagrant_2.3.5_amd64.deb
sudo dpkg -i vagrant_2.3.5_amd64.deb
sudo apt-get install -f -y  # Para resolver dependencias si es necesario

# Instalar Terraform
echo "Instalando Terraform..."
sudo apt-get install -y gnupg software-properties-common
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 0x7FA2AF80
sudo apt-add-repository "deb https://apt.releases.hashicorp.com $(lsb_release -cs) main"
sudo apt-get update
sudo apt-get install -y terraform

# Instalar dependencias de Python desde requirements.txt
if [ -f "requirements.txt" ]; then
    echo "Instalando dependencias de Python..."
    python3.11 -m pip install --upgrade pip
    python3.11 -m pip install -r requirements.txt
else
    echo "requirements.txt no encontrado. Aseg�rate de que el archivo exista en el directorio actual."
fi

echo "Instalaci�n completada."
