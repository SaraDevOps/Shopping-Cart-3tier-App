# VPC and Subnets Configuration
region                = "us-east-2"
vpc_cidr              = "10.0.0.0/16"
public_subnet_cidr_1  = "10.0.1.0/24"
public_subnet_cidr_2  = "10.0.2.0/24"
private_subnet_cidr_1 = "10.0.3.0/24"
private_subnet_cidr_2 = "10.0.4.0/24"
db_subnet_cidr_1      = "10.0.5.0/24"
db_subnet_cidr_2      = "10.0.6.0/24"
az_1                  = "us-east-2a"
az_2                  = "us-east-2b"

# EC2 Instances Configuration
bastion_ami           = "ami-085f9c64a9b75eed5" # Replace with your AMI ID
app_ami               = "ami-085f9c64a9b75eed5" # Replace with your AMI ID
db_ami                = "ami-085f9c64a9b75eed5" # Replace with your AMI ID
instance_type         = "t2.micro" # Replace with your desired instance type
key_name              = "sara-3-tier"

# RDS Configuration
db_username           = "admin"
db_password           = "Saraswathy123" # Replace with your desired password
db_name               = "mydatabase"

# ALB Configuration
environment             = "production"
enable_deletion_protection = false