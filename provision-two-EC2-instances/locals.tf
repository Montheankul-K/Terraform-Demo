locals {
  instances = [
    for name in var.instance_names : {
      name          = name
      instance_type = var.instance_type
      ami           = var.ami_id
    }
  ]
}