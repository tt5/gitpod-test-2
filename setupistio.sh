#!/bin/sh
curl -L https://istio.io/downloadIstio | ISTIO_VERSION=1.14.1 sh -
export PATH="$PATH:/workspace/gitpod-test-1/istio-1.14.1/bin"
istioctl install --set profile=demo -y
kubectl apply -f ~/istio-1.14.1/samples/addons/
kubectl label namespace default istio-injection=enabled
kubectl apply -f samples/bookinfo/bookinfo.yaml