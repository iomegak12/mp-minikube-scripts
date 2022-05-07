#!/bin/bash

echo $(date)

sudo apt-get update

sudo apt-get install nano jq dpkg-dev -y

curl -sSL https://get.docker.com | sudo bash -E -

sudo snap install kubectl --classic

sudo usermod -aG docker ubuntu

wget https://storage.googleapis.com/minikube/releases/latest/minikube_latest_$( dpkg-architecture -q DEB_HOST_ARCH ).deb

sudo apt-get install --yes --no-install-recommends -o Debug::pkgProblemResolver=yes ./minikube_latest_$( dpkg-architecture -q DEB_HOST_ARCH ).deb

