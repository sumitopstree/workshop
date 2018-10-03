#!/bin/bash
sudo apt-get update && sudo apt-get install -y apt-transport-https
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
echo "deb http://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee -a /etc/apt/sources.list.d/kubernetes.list
cat /etc/apt/sources.list.d/kubernetes.list 
sudo apt-get update && sudo apt-get install -y kubectl
wget https://github.com/kubernetes/minikube/releases/download/v0.29.0/minikube_0.29-0.deb
sudo dpkg -i minikube_0.29-0.deb 
minikube status
#minikube start
