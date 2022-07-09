openssl req -new -sha256 -days 3650 \
    -out traefik-ingress.csr \
    -key traefik-ingress.key \
    -config traefik-ingress.conf 

openssl x509 -req -sha256 -days 3650 \
    -in traefik-ingress.csr \
    -signkey traefik-ingress.key \
    -out traefik-ingress.crt \
    -extensions v3_req \
    -extfile traefik-ingress.conf

kubectl delete secret traefik-ingress-secret

kubectl create secret generic traefik-ingress-secret \
    --from-file=tls.crt=./traefik-ingress.crt \
    --from-file=tls.key=./traefik-ingress.key \
    -n kube-system

kubectl create secret generic traefik-ingress-secret \
    --from-file=tls.crt=./traefik-ingress.crt \
    --from-file=tls.key=./traefik-ingress.key

kubectl apply -f traefik-ingress.tsl-store.yaml