#!/bin/bash

set -e

initialize_master() {
  echo "Iniciando nodo master..."

  sudo k0s install controller
  sudo k0s start

  echo "Generando token para el nodo worker..."
  WORKER_TOKEN=$(sudo k0s token create --role=worker)

  echo "Token generado: $WORKER_TOKEN"
  echo "Guárdalo para agregar workers al cluster"
}

initialize_worker() {
  if [ -z "$1" ]; then
    echo "Error: Se requiere un token de nodo worker."
    exit 1
  fi

  WORKER_TOKEN=$1

  echo "Iniciando nodo worker con el token..."

  sudo k0s install worker --token $WORKER_TOKEN
  sudo k0s start
}

deploy_nginx_unprivileged() {
  echo "Desplegando NGINX unprivileged en el cluster..."

  cat <<EOF | kubectl apply -f -
apiVersion: apps/v1
kind: Deployment
metadata:
  name: nginx-unprivileged
spec:
  replicas: 1
  selector:
    matchLabels:
      app: nginx-unprivileged
  template:
    metadata:
      labels:
        app: nginx-unprivileged
    spec:
      containers:
      - name: nginx
        image: nginxinc/nginx-unprivileged:stable-alpine
        ports:
        - containerPort: 8080
EOF
}

usage() {
  echo "Uso: $0 {master|worker|deploy-nginx} [TOKEN]"
  exit 1
}

if [ $# -lt 1 ]; then
  usage
fi

case "$1" in
  master)
    initialize_master
    ;;
  worker)
    if [ -z "$2" ]; then
      usage
    fi
    initialize_worker $2
    ;;
  deploy-nginx)
    deploy_nginx_unprivileged
    ;;
  *)
    usage
    ;;
esac
