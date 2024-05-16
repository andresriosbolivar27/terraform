
output "ec2_wordpress_public_ip" {
  description = "Instance ID"
  value       = module.EC2.ec2_wordpress_public_ip
}