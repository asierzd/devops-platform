#!/bin/bash

NAMESPACE="arc-systems"

helm upgrade -i arc --namespace "${NAMESPACE}" --create-namespace --values values.yaml oci://ghcr.io/actions/actions-runner-controller-charts/gha-runner-scale-set-controller

