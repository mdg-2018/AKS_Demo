#!/bin/bash
. ./env.sh

# Create resource group
az group create --name $GROUP --location eastus

# Create AKS cluster
az aks create \
--resource-group $GROUP \
--name $CLUSTERNAME \
--node-count 3 \
-s Standard_D11_v2 \
--enable-addons monitoring

# Get credentials
az aks get-credentials --resource-group $GROUP --name $CLUSTERNAME