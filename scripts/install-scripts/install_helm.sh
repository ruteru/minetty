#!/bin/bash

DISTRO=$1

install_helm_ubuntu() {
    curl https://baltocdn.com/helm/signing.asc | sudo apt-key add -
    sudo apt-get install apt-transport-https --yes
    echo "deb https://baltocdn.com/helm/stable/debian/ all main" | sudo tee /etc/apt/sources.list.d/helm-stable-debian.list
    sudo apt-get update && sudo apt-get install -y helm
}

install_helm_centos() {
    curl https://baltocdn.com/helm/signing.asc | sudo yum install -y helm
}

case "$DISTRO" in
    ubuntu|debian)
        install_helm_ubuntu
        ;;
    centos|fedora|rhel)
        install_helm_centos
        ;;
    *)
        echo "Distribución no soportada para Helm: $DISTRO"
        exit 1
        ;;
esac
