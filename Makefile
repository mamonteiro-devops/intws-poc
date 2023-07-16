
create-s3-dynamodb: clean-terraform-files
	terraform -chdir=./steel-eye-aws-preconfig init
	terraform -chdir=./steel-eye-aws-preconfig apply -auto-approve

clean-terraform-files:
	rm -rf ./.terraform ./.terraform.tfstate.lock.info ./terraform.tfstate ./terraform.tfstate.backup
