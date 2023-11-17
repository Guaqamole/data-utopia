from airflow import DAG
from datetime import datetime, timedelta
from airflow.contrib.operators import kubernetes_pod_operator

default_args = {
    'owner': 'Namkyu',
    'start_date': datetime(2020, 5, 5),
    'retries': 1,
    'retry_delay': timedelta(seconds=5)
}

with DAG('etl_dag',
         default_args=default_args,
         schedule_interval=None) as dag:

    extract_transform = kubernetes_pod_operator.KubernetesPodOperator(
        namespace='airflow-cluster',
        image='python:3.7-slim',
        cmds=['echo'],
        arguments=['This can be the extract part of an ETL'],
        labels={'foo': 'bar'},
        name='extract-transform',
        task_id='extract-transform',
        get_logs=True
    )
