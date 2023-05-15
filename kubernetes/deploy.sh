#!/bin/bash

if test -f ../.env ; then
  source ../.env
fi

kubectl apply -f node-kubernetes/node.yaml
