#!/bin/bash

install_k0s_ubuntu() {
    echo "Instalando k0s en Ubuntu/Debian..."
    curl -sSLf https://get.k0s.sh | sudo sh
}

install_k0s_centos() {
    echo "Instalando k0s en CentOS/Fedora/RHEL..."
    curl -sSLf https://get.k0s.sh | sudo sh
}

install_k0s() {
    case "$1" in
        ubuntu|debian)
            install_k0s_ubuntu
            ;;
        centos|fedora|rhel)
            install_k0s_centos
            ;;
        *)
            echo "Distribución no soportada: $1"
            exit 1
            ;;
    esac
}

install_k0s "$1"
