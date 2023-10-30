terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region = "ap-southeast-1"
}

resource "aws_instance" "ec2_created_by_terraform" {
  count         = length(local.instances)
  ami           = local.instances[count.index].ami
  instance_type = local.instances[count.index].instance_type

  tags = {
    Name = local.instances[count.index].name
  }
}


