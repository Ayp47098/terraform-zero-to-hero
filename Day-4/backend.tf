terraform {
	backend "s3" {
		bucket="ayush-terraform-state-1234555"
		region = "us-east-1"
		key = "aayush/terraform.tfstate"
        dynamodb_table = "terraform-lock"
	}
}
