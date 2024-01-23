kubectl get secret -n es elasticsearch-es-http-certs-internal -o=jsonpath='{.data.ca\.crt}' | base64 --decode > /mnt/elasticsearch/logstash-0/ca.crt && chmod 777 /mnt/elasticsearch/logstash-0/ca.crt 
