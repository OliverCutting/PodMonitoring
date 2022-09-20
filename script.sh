#!/bin/bash

while true
do
  kubectl scale --replicas=$((1 + $RANDOM % 10)) -f podmonitoring/templates/replicaset.yaml
  sleep 5
done