#!/bin/bash

check_distribution() {
    if [ -f /etc/os-release ]; then
        . /etc/os-release
        DISTRO=$ID
    else
        echo "No se puede detectar la distribución de Linux."
        exit 1
    fi

    echo "Distribución detectada: $DISTRO"
}

check_distribution
