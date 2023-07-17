# Instructions 

export AWS_ACCESS_KEY_ID=<$ACCESS_KEY> \
export AWS_SECRET_ACCESS_KEY=<$SECRET_KEY> \
export AWS_REGION=<$REGION>

### Instruction to run the project 
    
    cd /home/mamonteiro/challenge/intws-poc/steel-eye-nginx-ingress-controller

### Initialize configurations to install the providers it references.
    terraform init
    terraform plan -out=tf.plan
    terraform apply -auto-approve

    terraform dastroy -auto-approve

### update the kubeconfig file for an Amazon Elastic Kubernetes Service (EKS) cluster in the specified AWS region
    rm -rf /home/mamonteiro/.kube/config  
    aws eks update-kubeconfig --region us-east-1 --name my-EKS1

cd /home/mamonteiro/challenge/intws-poc/gitlab
    docker-compose up -d
    docker-compose ps

### stop the active services, we can use stop, which will preserve containers, volumes, and networks, along with every modification made to them.
```
    docker-compose stop
```

### run down, which will destroy everything with the exception of external volumes.
```
docker-compose down

ss -antpl | grep docker
Username = root

docker exec -it gitlab-ce grep 'Password:' /etc/gitlab/initial_root_password

cd /home/mamonteiro/challenge/intws-poc/gitlab
export GITLAB_HOME=$(pwd)/gitlab             

```