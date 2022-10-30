## Install elasticsearch using Elastic Cloud on Kubernetes Operator

This cluster will have 3 master nodes as well as three data nodes

You can simply run the install.sh script and everything will be fine 

```
./install.sh
```
### Details


## connect to kibana

To connect to kibana you need the user name and password from elasticsearch

1. username is default to ``elastic``
2. Password you can get it from the secrets using the following command. 
```
kubectl get secret "elasticsearch-es-elastic-user" -o go-template='{{.data.elastic | base64decode }}'
```
3. Now you can do port-forward on the service and connect to the cluster
```
kubectl port-forward svc/kibana-kb-http 5601:5601
```
4. Navigate to the dev tools and get cluster health. 
```
GET _cluster/health
```

### Access es cluster from within the cluster

1. you need to get the self signed cert
```
kubectl get secret "$NAME-es-http-certs-public" -o go-template='{{index .data "tls.crt" | base64decode }}' > tls.crt
```

2. get the password
```
PW=$(kubectl get secret "$NAME-es-elastic-user" -o go-template='{{.data.elastic | base64decode }}')
```

3. Do curl
```
curl --cacert tls.crt -u elastic:$PW https://$ServiceName-es-http:9200/_cluser/health
```

You have the option to disable the ssl certificate using this config
```
spec:
  http:
    tls:
      selfSignedCertificate:
        disabled: true
```

4. If you decided to ignore the tls you can access your cluster now with the basic auth.
```
curl -u elastic:$PW https://$ServiceName-es-http:9200/_cluser/health
```
