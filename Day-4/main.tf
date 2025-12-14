provider "aws" {
  region = "us-east-1"
}
resource "aws_instance" "ayush" {
  instance_type = "t2.micro"
  ami="ami-03f9680ef0c07a3d1"
  subnet_id="subnet-056c30f5f8aad00a0" 
}
resource "aws_s3_bucket" "s3_bucket" {
  bucket = "ayush-terraform-state-1234555"
}
resource "aws_dynamodb_table" "terraform_lock" {
  name="terraform-lock"
  billing_mode = "PAY_PER_REQUEST"
  hash_key = "LockID"
  attribute {
    name = "LockID"
    type = "S"
  }
}