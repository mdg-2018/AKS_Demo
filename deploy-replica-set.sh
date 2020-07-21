#!/bin/bash
. ./env.sh

# note: manually update project.yaml!!!
echo "Please update project.yaml - press [enter] to continue"
read PROJECT

# setup config map
kubectl apply -f ./yamls/project.yaml -n $NAMESPACE

# create secret
echo "Public Key"
read PUBLICKEY

echo "Private Key"
read PRIVATEKEY

kubectl -n $NAMESPACE create secret generic my-credentials --from-literal="user=$PUBLICKEY" --from-literal="publicApiKey=$PRIVATEKEY"

# deploy replica set
kubectl apply -f ./yamls/replica-set.yaml -n $NAMESPACE
