Problem Statement:

Deploy a nginx container on any container orchestration platform such as kubernetes or aws ecs. 
This must be deployed using any IAC tool for example terraform. 
The service should be deployed behind a load balancer and support multiple replicas using the orchestration tool you decided to use. 
post the code to a public github repo for us to view

export AWS_ACCESS_KEY_ID=AKIA3HQ7JY3CXKSEFIMJ
export AWS_SECRET_ACCESS_KEY=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
export AWS_REGION=us-east-1

rm -rf terraform.tfstate .terraform .terraform.lock.hcl terraform.tfstate.backup


#Instruction to run the project 

cd /home/mamonteiro/challenge/intws-poc/steel-eye-nginx-ingress-controller

#Initialize configurations to install the providers it references.

    terraform init -reconfigure

    terraform plan -out=tf.plan

    terraform apply -auto-approve

    terraform dastroy -auto-approve

#update the kubeconfig file for an Amazon Elastic Kubernetes Service (EKS) cluster in the specified AWS region
rm -rf /home/mamonteiro/.kube/config  
aws eks update-kubeconfig --region us-east-1 --name my-EKS1

cd /home/mamonteiro/challenge/intws-poc/gitlab
docker-compose up -d
docker-compose ps

# stop the active services, we can use stop, which will preserve containers, volumes, and networks, along with every modification made to them.
docker-compose stop

# run down, which will destroy everything with the exception of external volumes.
docker-compose down

ss -antpl | grep docker
Username = root

docker exec -it gitlab-ce grep 'Password:' /etc/gitlab/initial_root_password



--------------
https://www.atlantic.net/dedicated-server-hosting/how-to-install-gitlab-with-docker-and-docker-compose-on-arch-linux/
cd /home/mamonteiro/challenge/intws-poc/gitlab
export GITLAB_HOME=$(pwd)/gitlab             
