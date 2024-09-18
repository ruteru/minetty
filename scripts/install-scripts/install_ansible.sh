#!/bin/bash

DISTRO=$1

install_ansible_ubuntu() {
    sudo apt-get update && sudo apt-get install -y ansible
}

install_ansible_centos() {
    sudo yum install -y ansible
}

case "$DISTRO" in
    ubuntu|debian)
        install_ansible_ubuntu
        ;;
    centos|fedora|rhel)
        install_ansible_centos
        ;;
    *)
        echo "Distribución no soportada para Ansible: $DISTRO"
        exit 1
        ;;
esac
