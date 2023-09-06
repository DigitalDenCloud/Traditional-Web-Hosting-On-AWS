# Store the Terraform State File in S3 and Lock with DynamoDB
terraform {
  backend "s3" {
    bucket         = "digitalden-terraform-remote-state"
    key            = "terraform-module/traditional-web-hosting-on-aws/terraform.tfstate"
    region         = "eu-west-2"
    dynamodb_table = "terraform-state-lock"
  }
}