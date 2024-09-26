variable "region" {
    description = "AWS region to deploy"
    default     = "eu-north-1"
}

variable "role_name" {
    description = "Name of the IAM role for GitHub Actions"
    default     = "GitHubActionsRole"
}

variable "bucket_name" {
    description = "Name S3 bucket for Terraform"
    default     = "terraform-states-bucket-vlad"
}

variable "dynamodb_table" {
    description = "DynamoDB table for state locking"
    default     = "terraform-locks"
}
