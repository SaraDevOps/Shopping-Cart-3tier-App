module "vpc" {
  source = "./Modules/VPC"  # Path to your VPC module

  vpc_cidr              = var.vpc_cidr
  public_subnet_cidr_1  = var.public_subnet_cidr_1
  public_subnet_cidr_2  = var.public_subnet_cidr_2
  private_subnet_cidr_1 = var.private_subnet_cidr_1
  private_subnet_cidr_2 = var.private_subnet_cidr_2
  db_subnet_cidr_1      = var.db_subnet_cidr_1
  db_subnet_cidr_2      = var.db_subnet_cidr_2
  az_1                  = var.az_1
  az_2                  = var.az_2
}

module "security_groups" {
  source = "./Modules/SG"
  vpc_id = module.vpc.vpc_id
}

module "ec2" {
  source = "./Modules/EC2"

  bastion_ami              = var.bastion_ami
  app_ami                  = var.app_ami
  db_ami                   = var.db_ami
  instance_type            = var.instance_type
  public_subnet_id         = module.vpc.public_subnet_ids[0]
  private_subnet_id        = module.vpc.private_subnet_ids[0]
  db_subnet_id             = module.vpc.db_subnet_ids[0]
  bastion_security_group_id = module.security_groups.bastion_security_group_id
  app_security_group_id    = module.security_groups.app_security_group_id
  key_name                  = var.key_name
}

module "rds" {
  source = "./Modules/RDS"

  db_subnet_ids       = module.vpc.db_subnet_ids
  db_security_group_id = module.security_groups.app_security_group_id
  db_username         = var.db_username
  db_password         = var.db_password
  db_name             = var.db_name
}

module "alb" {
  source = "./Modules/ALB"

  vpc_id                    = module.vpc.vpc_id
  public_subnet_ids         = module.vpc.public_subnet_ids
  environment               = var.environment
  enable_deletion_protection = var.enable_deletion_protection
  #alb_security_group_id     = module.security_group.alb_security_group_id
  app_instance_id         = [module.ec2.app_instance_id]
}

