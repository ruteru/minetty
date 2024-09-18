#!/bin/bash

DISTRO=$1

install_podman_ubuntu() {
    sudo apt-get update && sudo apt-get install -y podman
}

install_podman_centos() {
    sudo yum install -y podman
}

case "$DISTRO" in
    ubuntu|debian)
        install_podman_ubuntu
        ;;
    centos|fedora|rhel)
        install_podman_centos
        ;;
    *)
        echo "Distribución no soportada para Podman: $DISTRO"
        exit 1
        ;;
esac
