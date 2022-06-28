#!/bin/sh
civo kubernetes create gitpod-test2 --size "g4s.kube.medium" --nodes 1 --wait --save --merge --region FRA1
