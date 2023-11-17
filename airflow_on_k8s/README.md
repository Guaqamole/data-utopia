# 구현: Implementation
- IaC는 Helm Chart 사용 (User Community Version)
- Executor는 CeleryExecutor 사용
- CelerExecutor 사용에 따라 Redis도 Helm Chart에 포함되어있음
- `values.yaml`을 유심히 살펴볼것

### Airflow Cluster Spec
#### Master Node (1대)

#### Worker Node (2대)


## Step 1. Namespace
```sh
kubectl create namespace airflow
```

## Step 2. Helm Chart
```sh
git clone git@github.com:airflow-helm/charts.git
```
