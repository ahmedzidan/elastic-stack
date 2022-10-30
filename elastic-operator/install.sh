#!/usr/bin/env bash

function install_operator() {
  helm repo add elastic https://helm.elastic.co
  helm repo update
  helm upgrade \
    --install \
    elastic-operator elastic/eck-operator \
    --namespace elastic-system \
    --create-namespace \
    --version v2.4.0 \
    -f operator.yaml
}

function install_stack() {
 kubectl apply -k .
}

install_operator
install_stack