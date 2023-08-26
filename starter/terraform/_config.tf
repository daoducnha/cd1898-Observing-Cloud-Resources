terraform {
   backend "s3" {
     bucket = "udacity-nha-admin-215718144426-terraform"
     key    = "terraform/terraform.tfstate"
     region = "us-east-1"
   }
 }

 provider "aws" {
   region = "us-east-1"

   default_tags {
     tags = local.tags
   }
 }