output "instance_ids" {
  value = aws_instance.ec2_created_by_terraform[*].id
}