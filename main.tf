module "VPC" {
  source = "./modules/VPC"
  vpc_cidr      = var.vpc_cidr[terraform.workspace]
  vpc_name      = var.vpc_name[terraform.workspace]
  subnet_1_cidr = var.subnet_1_cidr[terraform.workspace]
  subnet_1_name = var.subnet_1_name[terraform.workspace]
  subnet_2_cidr = var.subnet_2_cidr[terraform.workspace]
  subnet_2_name = var.subnet_2_name[terraform.workspace]
}

module "EC2" {
  source = "./modules/EC2"
  ec2_wordpress_ami           = var.ec2_wordpress_ami[terraform.workspace]
  ec2_wordpress_name          = var.ec2_wordpress_name[terraform.workspace]
  ec2_wordpress_quantity      = var.ec2_wordpress_quantity[terraform.workspace]
  ec2_wordpress_subnet_id     = module.VPC.ec2_wordpress_subnet_id
  ec2_wordpress_type          = var.ec2_wordpress_type[terraform.workspace]
  aws_keypair                 = var.aws_keypair[terraform.workspace]
  vpc_id                      = module.VPC.vpc_id
  ec2_wordpress_user_data     = var.ec2_wordpress_user_data[terraform.workspace]
}

#module "EC2" {
#  source = "./modules/EC2"
#  ec2_githubrunner_ami = var.ec2_githubrunner_ami[terraform.workspace]
#  ec2_githubrunner_name = var.ec2_githubrunner_name[terraform.workspace]
#  ec2_githubrunner_quantity = var.ec2_githubrunner_quantity[terraform.workspace]
#  ec2_githubrunner_type = var.ec2_githubrunner_type[terraform.workspace]
#  aws_keypair = var.aws_keypair[terraform.workspace]
#  ec2_githubrunner_subnet = module.VPC.subnet_id
#  ec2_githubrunner_securitygroup = module.VPC.securitygroup_id
#}