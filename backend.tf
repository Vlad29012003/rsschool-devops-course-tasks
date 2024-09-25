terraform {
  backend "s3" {
    bucket = "terraform-states-bucket-vlad"
    key = "terraform.tfstate"
    region = "eu-north-1"
    encrypt = true 
    dynamodb_table = "terraform-locks"
    
  }
}