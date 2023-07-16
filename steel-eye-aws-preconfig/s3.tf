resource "aws_s3_bucket" "demo" {
    bucket = "steel-eye-nginx-ingress-controller-terraform-state-lock"

    tags = {
        Name = "S3 Remote Terraform State Store"
    }
}

resource "aws_s3_bucket_versioning" "versioning_example" {
    bucket = aws_s3_bucket.demo.id
    versioning_configuration {
        status = "Enabled"
    }
}

#Resource to enable encryption
resource "aws_s3_bucket_server_side_encryption_configuration" "demo-encryption" {
    bucket = aws_s3_bucket.demo.bucket
    rule {
        apply_server_side_encryption_by_default {
            sse_algorithm = "AES256"
        }
    }
}

#Adds an ACL to bucket
#resource "aws_s3_bucket_acl" "demo_bucket_acl" {
#    bucket = aws_s3_bucket.demo.bucket
#    acl    = "private"
#}


#Block Public Access
resource "aws_s3_bucket_public_access_block" "demo_public_block" {
    bucket = aws_s3_bucket.demo.bucket

    block_public_acls   = true
    block_public_policy = true
    ignore_public_acls = true
    restrict_public_buckets = true
}