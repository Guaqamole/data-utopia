kubectl patch pv es-master-0 -p '{"spec":{"claimRef": null}}'
kubectl patch pv es-data-0 -p '{"spec":{"claimRef": null}}'
kubectl patch pv es-client-0 -p '{"spec":{"claimRef": null}}'

