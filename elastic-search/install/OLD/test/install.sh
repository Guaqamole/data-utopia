helm install elasticsearch -f values.yaml --set sysctlImage.enabled=true -n es-cluster bitnami/elasticsearch
