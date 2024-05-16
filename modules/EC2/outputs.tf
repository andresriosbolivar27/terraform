output "ec2_wordpress_id" {
  description = "Instance ID"
  value       = aws_instance.ec2_itm_wordpress[*].id
}

output "ec2_wordpress_public_ip" {
  description = "Instance ID"
  value       = aws_instance.ec2_itm_wordpress[*].public_ip
}