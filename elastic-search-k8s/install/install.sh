kubectl apply -f ./conf/es.yaml

sleep 5
kubectl apply -f ./conf/logstash.yml

sleep 15
kubectl apply -f ./conf/kibana.yaml

sleep 5
kubectl apply -f ./conf/mysql.yml

./scripts/password.sh
