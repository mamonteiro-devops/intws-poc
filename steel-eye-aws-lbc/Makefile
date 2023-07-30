create-all:		clean apply-terraform-backend apply-first-solution

clean:
	rm -rf ./backend/live/backend.tf
	rm -rf ./backend/live/steel-eye/.terraform ./backend/live/steel-eye/.terraform.tfstate.lock.info ./backend/live/steel-eye/terraform.tfstate

apply-terraform-backend:
	aws configure
	export AWS_REGION=us-east-1
	terraform -chdir=./backend/live/steel-eye init
	terraform -chdir=./backend/live/steel-eye apply -auto-approve

apply-first-solution:
	export AWS_REGION=us-east-1
	terraform -chdir=./ekscluster init
	terraform -chdir=./ekscluster apply -auto-approve
