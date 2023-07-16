# Terraform Backend
Provision / bootstrap S3-based terraform state backends for stell-eye account.

Terraform module to provision an S3 bucket to store terraform.tfstate file and a DynamoDB table to lock the state file to prevent concurrent modifications and state corruption.

The module supports the following:
    Forced server-side encryption at rest for the S3 bucket
    S3 bucket versioning to allow for Terraform state recovery in the case of accidental deletions and human errors
    State locking and consistency checking via DynamoDB table to prevent concurrent operations
    DynamoDB server-side encryption