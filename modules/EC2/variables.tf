# VPC Wordpress ID
variable "vpc_id" {
  type        = string
  description = "VPC Wordpress ID"
}

# AWS KeyPair
variable "aws_keypair" {
  type        = string
  description = "AWS KeyPair"
}

# EC2 Wordpress AMI
variable "ec2_wordpress_ami" {
  type        = string
  description = "EC2 Wordpress AMI"
}

# EC2 Wordpress Instance Type
variable "ec2_wordpress_type" {
  type        = string
  description = "EC2 Wordpress Type"
}

# EC2 Wordpress Instance quantity
variable "ec2_wordpress_quantity" {
  type        = number
  description = "EC2 Wordpress Quantity"
}

# EC2 Wordpress Name
variable "ec2_wordpress_name" {
  type        = string
  description = "EC2 Wordpress Name"
}

# EC2 Wordpress Subnet
variable "ec2_wordpress_subnet_id" {
  type        = string
  description = "EC2 Wordpress Subnet ID"
}

# EC2 Wordpress User_Data
variable "ec2_wordpress_user_data" {
  type        = string
  description = "EC2 Wordpress User Data"
}