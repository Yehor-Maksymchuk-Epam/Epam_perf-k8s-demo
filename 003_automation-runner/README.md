# Quality automation application

## Performance tests

Deployment implemented with [kustomize]("https://kustomize.io")

## Install required tools:

- [install]("https://kubectl.docs.kubernetes.io/installation/kustomize/binaries/") kustomize binary
- make sure `kustomize version` returns >=5.0.0


## Running tests

### Precondition:

## Create cluster
```shell
eksctl create cluster -f ./cluster_config/cluster.yaml
```

## Get new cluster kubeconfig

```shell
aws eks update-kubeconfig --region eu-north-1 --name epam-perf-test-demo
```


### Run tests with kustomize:

- to run test execute:
- Make sure to delete existing resources before running tests
```shell
kustomize build | kubectl apply -f -
```

- to clean up k8s environment execute:

```shell
kustomize build | kubectl delete -f -
```

- to check if pods are running

```shell 
kubectl get pod -n qa-automation
```

- to get logs from a pod

```shell
kubectl logs -f <pod name> -n qa-automation 
```

- to go inside pod with reports
```shell 
kubectl exec -it gatling-report -- /bin/bash
```


### Change test settings:

- To change amount of pods modify job.yaml file

```yaml
completions: 10
parallelism: 10
 ```

- To change amount of threads modify job.yaml file

```yaml
GATLING_NUMBER_USERS
```


### Postaction
## Delete cluster

```shell
eksctl delete cluster -f cluster.yaml
```