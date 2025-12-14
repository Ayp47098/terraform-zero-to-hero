provider "aws" {
  region = "us-east-1"
}
module "ec2_instance" {
  source = "./modules/ec2_instance"
    ami_value = "ami-03f9680ef0c07a3d1"
    instance_type_value = "t2.micro"
    subnet_id_value = "subnet-056c30f5f8aad00a0"

}