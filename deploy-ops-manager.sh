#!/bin/bash
. ./env.sh

# create ops manager secret
kubectl create secret generic ops-manager-admin-secret  --from-literal=Username="$USERNAME" --from-literal=Password="$PASSWORD"  --from-literal=FirstName="$FIRSTNAME" --from-literal=LastName="$LASTNAME" -n $NAMESPACE

# deploy ops manager resource
kubectl apply -f ./yamls/ops-manager.yaml -n $NAMESPACE