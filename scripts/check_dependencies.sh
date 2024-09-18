#!/bin/bash

source ./check_dist.sh

check_command() {
    command -v "$1" >/dev/null 2>&1
}

install_dependency() {
    case "$1" in
        podman)
            echo "Instalando Podman..."
            ./install-scripts/install_podman.sh $DISTRO
            ;;
        ansible)
            echo "Instalando Ansible..."
            ./install-scripts/install_ansible.sh $DISTRO
            ;;
        kubectl)
            echo "Instalando Kubernetes (kubectl)..."
            ./install-scripts/install_kubectl.sh $DISTRO
            ;;
        helm)
            echo "Instalando Helm..."
            ./install-scripts/install_helm.sh $DISTRO
            ;;
        k0s)
            echo "Instalando k0s..."
            ./install-scripts/install_k0s.sh $DISTRO
            ;;
        *)
            echo "Dependencia $1 no reconocida o no soportada para instalación automática."
            ;;
    esac
}

DEPENDENCIES=(podman ansible kubectl helm k0s)

for dep in "${DEPENDENCIES[@]}"; do
    if check_command "$dep"; then
        echo "$dep ya está instalado."
    else
        echo "$dep no está instalado."
        install_dependency "$dep"
    fi
done
