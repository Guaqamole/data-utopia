SPARK_HOME=/opt/spark/
K8S_API_ENDPOINT=$(kubectl config view --minify -o jsonpath='{.clusters[].cluster.server}')
K8S_NS=spark
$SPARK_HOME/bin/spark-submit \
--master k8s://$K8S_API_ENDPOINT \
--name spark-pi \
--class org.apache.spark.examples.SparkPi \
--conf spark.executor.instances=3 \
--conf spark.kubernetes.container.image=apache/spark:3.5.0 \
--conf spark.kubernetes.namespace=$SPARK_NAME \
--conf spark.kubernetes.authenticate.driver.serviceAccountName=apache-spark-driver \
--deploy-mode cluster \
local:///opt/spark/examples/jars/spark-examples_2.12-3.5.0.jar

## 한번에 안됫던 이유: spark-env에 master_ip=172.xxx.xxx.xxx을 적어놔서 pod 끼리 통신이 안되고있었다... node 통신이 아니다!
