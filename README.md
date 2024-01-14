## Prerequisites..

## install:
- aws
- kubectl
- terraform

## configure aws-cli:
```
aws configure
```

## Initialize configuration
```
terraform init
```

## Provision the EKS cluster
```
terraform apply
```

## retrieve the access credentials for the cluster and configure kubectl.
```
aws eks --region $(terraform output -raw region) update-kubeconfig \
    --name $(terraform output -raw cluster_name)
```

## Verify the Cluster
```
kubectl cluster-info
```

## Verify worker nodes
```
kubectl get nodes
```

###  ALB Ingress Controller
```
helm repo add eks https://aws.github.io/eks-charts
```

```
helm install aws-load-balancer-controller eks/aws-load-balancer-controller \
  --set autoDiscoverAwsRegion=true \
  --set autoDiscoverAwsVpcID=true \
  --set clusterName=<cluster_name>
:w
```
