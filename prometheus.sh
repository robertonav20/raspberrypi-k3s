kubectl apply -f https://raw.githubusercontent.com/coreos/prometheus-operator/v0.56.3/bundle.yaml
kubectl apply \
-f https://raw.githubusercontent.com/prometheus-operator/prometheus-operator/v0.56.3/example/prometheus-operator-crd/monitoring.coreos.com_prometheuses.yaml \
--force-conflicts=true \
--server-side