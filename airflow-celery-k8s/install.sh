helm install   "$AIRFLOW_NAME"   airflow-stable/airflow   --namespace "$AIRFLOW_NAMESPACE"   --version "8.7.1"   --values ./custom-values.yaml
