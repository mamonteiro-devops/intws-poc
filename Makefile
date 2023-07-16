
create-s3-dynamodb: clean-terraform-files
	terraform -chdir=./steel-eye-aws-preconfig init
	terraform -chdir=./steel-eye-aws-preconfig apply -auto-approve

apply-terraform-backend:
	terraform -chdir=./steel-eye-terraform-backend init
	terraform -chdir=./steel-eye-terraform-backend apply -auto-approve

apply-first-solution:
	terraform -chdir=./steel-eye-nginx-ingress-controller init
	terraform -chdir=./steel-eye-nginx-ingress-controller apply -auto-approve


clean-terraform-files:
	rm -rf ./.terraform ./.terraform.tfstate.lock.info ./terraform.tfstate ./terraform.tfstate.backup
