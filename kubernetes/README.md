## Local run

## Start cluster

[Cheatsheet](https://kubernetes.io/docs/reference/kubectl/cheatsheet/)

Useful commands.  
```
minikube start
kubectl apply -f node.yaml
kubectl get pods

# stop
kubectl get deployments
kubectl delete deploy <deployment name> 
```

node-kubernetes [demo](https://testdriven.io/blog/deploying-a-node-app-to-google-cloud-with-kubernetes/)

Can't get minikube to use the gcp cred https://kubernetes.io/docs/tasks/configure-pod-container/pull-image-private-registry/

Running with a local docker image.
https://levelup.gitconnected.com/two-easy-ways-to-use-local-docker-images-in-minikube-cd4dcb1a5379
 imagePullPolicy: Never
```
minikube image build -t <name>
```

Put image name in node.yaml

```
minikube start
kubectl apply -f node.yaml
minikube service node-kubernetes --url
```
And visit url.
