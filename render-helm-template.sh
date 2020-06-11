#!/bin/bash
set -ex

helm template \
     --release-name consul-server \
     --namespace demo \
     -f $(dirname $0)/default-values.yml \
     bitnami/consul  | kbld -f - > config/consul-server.yml