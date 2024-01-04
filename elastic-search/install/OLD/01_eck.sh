kubectl create ns elastic-search-cluster
kubectl create -f es-crds.yaml
kubectl apply -f eck-operator.yaml
