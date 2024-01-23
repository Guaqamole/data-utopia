kubectl delete -f ./conf/kibana.yaml
kubectl delete -f ./conf/es.yaml
kubectl delete -f ./conf/logstash.yml
kubectl delete -f ./conf/mysql.yml

rm -rf /mnt/elasticsearch/master-0/nodes
rm -rf /mnt/elasticsearch/client-0/nodes
rm -rf /mnt/elasticsearch/data-0/nodes

./scripts/patch-pv.sh
