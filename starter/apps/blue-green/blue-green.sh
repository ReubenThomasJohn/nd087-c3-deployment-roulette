#!/bin/bash

set -e

# Initialize green deployment
kubectl apply -f ./index_green_html.yml
kubectl apply -f ./green.yml