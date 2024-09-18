#!/bin/bash

install_prettier() {
    DISTRO=$1

    case "$DISTRO" in
        ubuntu|debian)
            echo "Instalando Prettier en $DISTRO..."
            sudo apt-get update
            sudo apt-get install -y npm
            sudo npm install --global prettier prettier-plugin-yaml
            ;;
        fedora)
            echo "Instalando Prettier en $DISTRO..."
            sudo dnf install -y npm
            sudo npm install --global prettier prettier-plugin-yaml
            ;;
        arch)
            echo "Instalando Prettier en $DISTRO..."
            sudo pacman -S --noconfirm npm
            sudo npm install --global prettier prettier-plugin-yaml
            ;;
        *)
            echo "Distribución no soportada para Prettier."
            ;;
    esac
}

install_prettier $1
