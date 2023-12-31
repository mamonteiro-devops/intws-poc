create-all:		create-s3-dynamodb apply-terraform-backend apply-first-solution

create-s3-dynamodb:
	aws configure
	export AWS_REGION=us-east-1
	terraform -chdir=./steel-eye-aws-preconfig init
	terraform -chdir=./steel-eye-aws-preconfig apply -auto-approve

apply-terraform-backend:
	terraform -chdir=./steel-eye-terraform-backend/live/steel-eye init
	terraform -chdir=./steel-eye-terraform-backend/live/steel-eye apply -auto-approve

apply-first-solution:
	terraform -chdir=./steel-eye-nginx-ingress-controller init
	terraform -chdir=./steel-eye-nginx-ingress-controller apply -auto-approve
