#!/bin/bash
. ./env.sh

# Create a namespace
kubectl create namespace $NAMESPACE

# Install enterprise operator
kubectl apply -f https://raw.githubusercontent.com/mongodb/mongodb-enterprise-kubernetes/master/crds.yaml -n $NAMESPACE
kubectl apply -f https://raw.githubusercontent.com/mongodb/mongodb-enterprise-kubernetes/master/mongodb-enterprise.yaml -n $NAMESPACE