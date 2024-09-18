#!/bin/bash

DISTRO=$1

install_kubectl_ubuntu() {
    sudo apt-get update && sudo apt-get install -y kubectl
}

install_kubectl_centos() {
    sudo yum install -y kubectl
}

case "$DISTRO" in
    ubuntu|debian)
        install_kubectl_ubuntu
        ;;
    centos|fedora|rhel)
        install_kubectl_centos
        ;;
    *)
        echo "Distribución no soportada para kubectl: $DISTRO"
        exit 1
        ;;
esac
