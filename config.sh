#!/bin/bash

set -e

kubectl config set-cluster k8s --server="${K8S_SERVER}"
kubectl config set clusters.k8s.certificate-authority-data ${K8S_CERTIFICATE}
kubectl config set-credentials gitlab --token="${K8S_USER_TOKEN}"
kubectl config set-context default --cluster=k8s --user=gitlab
kubectl config use-context default

echo $CI_REGISTRY_PASSWORD | helm registry login $CI_REGISTRY --username=$CI_REGISTRY_USER --password-stdin