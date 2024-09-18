#!/bin/bash

install_shellcheck() {
    DISTRO=$1

    case "$DISTRO" in
        ubuntu|debian)
            echo "Instalando ShellCheck en $DISTRO..."
            sudo apt-get update
            sudo apt-get install -y shellcheck
            ;;
        fedora)
            echo "Instalando ShellCheck en $DISTRO..."
            sudo dnf install -y ShellCheck
            ;;
        arch)
            echo "Instalando ShellCheck en $DISTRO..."
            sudo pacman -S --noconfirm shellcheck
            ;;
        *)
            echo "Distribución no soportada para ShellCheck."
            ;;
    esac
}

install_shellcheck $1
