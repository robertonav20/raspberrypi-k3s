kamel uninstall --olm=false

kubectl delete crd integrationplatforms.camel.apache.org
kubectl delete crd integrationkits.camel.apache.org
kubectl delete crd integrations.camel.apache.org
kubectl delete crd camelcatalogs.camel.apache.org
kubectl delete crd builds.camel.apache.org
kubectl delete crd kamelets.camel.apache.org
kubectl delete crd kameletbindings.camel.apache.org