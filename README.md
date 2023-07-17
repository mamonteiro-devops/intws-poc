## Instructions 

```
    export AWS_ACCESS_KEY_ID=<ACCESS_KEY>
    export AWS_SECRET_ACCESS_KEY=<SECRET_KEY>
    export AWS_REGION=<REGION>
    
    export AWS_ACCESS_KEY_ID=AKIA6L6J4C62A5QKINNN
    export AWS_SECRET_ACCESS_KEY=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
    export AWS_REGION=us-east-1
```


### Instruction to run the project 
```
    cd /home/mamonteiro/challenge/intws-poc/steel-eye-nginx-ingress-controller
```

### Initialize configurations to install the providers it references.
```
    terraform init
    terraform plan -out=tf.plan
    terraform apply -auto-approve

    terraform dastroy -auto-approve
```

### update the kubeconfig file for an Amazon Elastic Kubernetes Service (EKS) cluster in the specified AWS region
```
    rm -rf /home/mamonteiro/.kube/config  
    aws eks update-kubeconfig --region us-east-1 --name steel-eye-eks
```

