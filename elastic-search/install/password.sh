kubectl get secret -n es elasticsearch-es-elastic-user -o=jsonpath='{.data.elastic}' | base64 --decode
echo ""
