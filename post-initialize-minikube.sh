#!/bin/bash

minikube start --driver=docker

kubectl get nodes

minikube status

