## install argo client

```
curl -sSL -o $GOPATH/bin/argo https://github.com/argoproj/argo/releases/download/v2.4.2/argo-darwin-amd64
chmod +x $GOPATH/bin/argo
```

## install argo 2.2.1 to kubernetes

```
kubectl create namespace argo
kubectl create -n argo -f install.yaml
```

## install latest argo to kubernetes
```
kubectl create namespace argo
kubectl apply -n argo -f https://raw.githubusercontent.com/argoproj/argo/v2.4.2/manifests/install.yaml
```

## build asdfsx/toolbox
docker build -t asdfsx/toolbox .
docker push asdfsx/toolbox

## create argo workflow
kubectl create -f pvc.yaml
argo submit -n argo argo.yaml
