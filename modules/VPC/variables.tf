# VPC CIDR Block
variable "vpc_cidr" {
  type = string
  description = "VPC CIDR"
}

# VPC Name
variable "vpc_name" {
  type = string
  description = "VPC Name"
}

# Subnet 1 CIDR
variable "subnet_1_cidr" {
  type = string
  description = "Subnet 1 CIDR"
}

# Subnet 1 Name
variable "subnet_1_name" {
  type = string
  description = "Subnet 1 Name"
}

# Subnet 2 CIDR
variable "subnet_2_cidr" {
  type = string
  description = "Subnet 2 CIDR"
}

# Subnet 2 Name
variable "subnet_2_name" {
  type = string
  description = "Subnet 2 Name"
}