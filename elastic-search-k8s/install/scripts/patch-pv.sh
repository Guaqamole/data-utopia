kubectl patch pv es-master-0 -p '{"spec":{"claimRef": null}}'
kubectl patch pv es-data-0 -p '{"spec":{"claimRef": null}}'
kubectl patch pv es-client-0 -p '{"spec":{"claimRef": null}}'
kubectl patch pv logstash-data -p '{"spec":{"claimRef": null}}'
kubectl patch pv elasticsearch-data -p '{"spec":{"claimRef": null}}'
kubectl patch pv config-volume -p '{"spec":{"claimRef": null}}'
kubectl patch pv logstash-pipeline-volume -p '{"spec":{"claimRef": null}}'
