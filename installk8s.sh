#!/bin/bash

# Instalar dependencias
sudo apt update
sudo apt install -y curl

# Instalar kubectl
sudo apt-get update && sudo apt-get install -y apt-transport-https
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
echo "deb https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee -a /etc/apt/sources.list.d/kubernetes.list
sudo apt-get update
sudo apt-get install -y kubectl
chmod +x /usr/bin/kubectl
sudo cp /usr/bin/kubectl /usr/local/bin/kubectl

# Instalar Minikube
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube_latest_amd64.deb
sudo dpkg -i minikube_latest_amd64.deb
chmod +x /usr/bin/minikube
sudo cp /usr/bin/minikube /usr/local/bin/minikube


# Iniciar Minikube
minikube start

# Verificar el estado de Minikube
minikube status
