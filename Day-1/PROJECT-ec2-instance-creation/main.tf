provider "aws" {
    region = "us-east-1"  # Set your desired AWS region
}

resource "aws_instance" "example" {
    ami           = "ami-0ecb62995f68bb549"  # Specify an appropriate AMI ID
    instance_type = "t2.micro"
    subnet_id = "subnet-056c30f5f8aad00a0"
    key_name = "aws_login"
}