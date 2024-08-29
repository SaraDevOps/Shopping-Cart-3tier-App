variable "region" {
  description = "AWS region"
  type        = string
}
variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string
}

variable "public_subnet_cidr_1" {
  description = "CIDR block for the first public subnet"
  type        = string
}

variable "public_subnet_cidr_2" {
  description = "CIDR block for the second public subnet"
  type        = string
}

variable "private_subnet_cidr_1" {
  description = "CIDR block for the first private subnet"
  type        = string
}

variable "private_subnet_cidr_2" {
  description = "CIDR block for the second private subnet"
  type        = string
}

variable "db_subnet_cidr_1" {
  description = "CIDR block for the first database subnet"
  type        = string
}

variable "db_subnet_cidr_2" {
  description = "CIDR block for the second database subnet"
  type        = string
}

variable "az_1" {
  description = "Availability Zone 1"
  type        = string
}

variable "az_2" {
  description = "Availability Zone 2"
  type        = string
}
variable "key_name" {
  description = "The name of the key pair to use for the instances"
  type        = string
}

variable "bastion_ami" {
  description = "AMI ID for the Bastion Host"
  type        = string
}

variable "app_ami" {
  description = "AMI ID for the App Tier Instance"
  type        = string
}

variable "db_ami" {
  description = "AMI ID for the DB Tier Instance"
  type        = string
}

variable "instance_type" {
  description = "Instance type for all EC2 instances"
  type        = string
}
variable "db_username" {
  description = "Username for the RDS instance"
  type        = string
}

variable "db_password" {
  description = "Password for the RDS instance"
  type        = string
  sensitive   = true
}

variable "db_name" {
  description = "Name of the RDS database"
  type        = string
}

# ALB Variables
variable "environment" {
  description = "Environment name to use in naming resources"
  type        = string
  default     = "dev"
}

variable "enable_deletion_protection" {
  description = "Enable deletion protection for the ALB"
  type        = bool
  default     = false
}