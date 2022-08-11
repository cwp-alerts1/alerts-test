terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }
}
  required_version = "= 0.12"

provider "aws" {
  profile = "default"
  region  = "us-west-2"
}

 #text
 
resource "aws_instance" "app_server" {
	#zpc-skip-policy: ZS-AWS-00030:Please add a comment
  ami           = "ami-830c94e3"
  instance_type = "t2.micro"
  ingress_cidr_blocks = ["0.0.0.0/16"]
  tags = {
    Name = "ExampleAppServerInstance"
  }
}
