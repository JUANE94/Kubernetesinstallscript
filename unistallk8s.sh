#!/bin/bash

# Stop and delete Minikube cluster
if command -v minikube &> /dev/null; then
    echo "Stopping and deleting Minikube cluster..."
    minikube stop
    minikube delete
fi

# Uninstall kubectl
if command -v kubectl &> /dev/null; then
    echo "Uninstalling kubectl..."
    sudo apt-get remove -y kubectl
    sudo rm /usr/local/bin/kubectl
fi

# Uninstall Minikube
if command -v minikube &> /dev/null; then
    echo "Uninstalling Minikube..."
    sudo apt-get remove minikube
    sudo rm /usr/local/bin/minikube
fi

echo "Kubernetes tools (Minikube and kubectl) have been successfully uninstalled."
