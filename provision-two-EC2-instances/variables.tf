variable "instance_names" {
  type    = list(string)
  default = ["ec2_created_by_terraform_01", "ec2_created_by_terraform_02"]
}

variable "ami_id" {
  type    = string
  default = "ami-0b825ad86ddcfb907"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}