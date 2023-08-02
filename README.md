## Instructions 
ft1+ft2
```
    export AWS_ACCESS_KEY_ID=<ACCESS_KEY>
    export AWS_SECRET_ACCESS_KEY=<SECRET_KEY>
    export AWS_REGION=<REGION>  
    
    Note: the aws account must be replaced in steel-eye-terraform-backend/live/steel-eye/main.tf
    
```


### intws-poc
    [steel-eye-aws-preconfig]     - Create the S3 and DynamoDB table to control remote state \
    [steel-eye-terraform-backend] - Terraform module to provision an S3 bucket to store terraform.tfstate file and a DynamoDB table to lock the state file to prevent concurrent modifications and state corruption. \
    [steel-eye-nginx-ingress-controller] - project implementation

### Initialize configurations to install the providers it references.
```
    cd steel-eye-aws-preconfig
        terraform init
        terraform apply -auto-approve
        
    cd steel-eye-terraform-backend
        terraform init
        terraform apply -auto-approve
        
    cd steel-eye-nginx-ingress-controller
        terraform init
        terraform apply -auto-approve
```

### update the kubeconfig file for an Amazon Elastic Kubernetes Service (EKS) cluster in the specified AWS region
```
    rm -rf /home/mamonteiro/.kube/config  
    aws eks update-kubeconfig --region us-east-1 --name steel-eye-eks
```


### Some useful commands
```
kubectl -n kube-system get deploy
kubectl -n kube-system describe deploy <aws-load-balancer-controller>
kubectl -n kube-system get pods

kubectl -n kube-system get svc

```