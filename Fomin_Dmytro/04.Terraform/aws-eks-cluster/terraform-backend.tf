# Backend S3
# https://www.terraform.io/language/settings/backends/s3
# Stores the state as a given key in a given bucket on Amazon S3. This backend also 
# supports state locking and consistency checking via Dynamo DB, which can be enabled 
# by setting the dynamodb_table field to an existing DynamoDB table name. A single 
# DynamoDB table can be used to lock multiple remote state files. Terraform generates 
# key names that include the values of the bucket and key variables.


# Terraform backend. s3 bucket with dynamodb 
terraform {
  backend "s3" {
    bucket  = "cluster-tfstate-bucket"
    encrypt = true
    key     = "terraform.tfstate"
    region  = "eu-central-1"
  }
}
