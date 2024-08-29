output "vpc_id" {
  value = module.vpc.vpc_id
}

output "public_subnet_ids" {
  value = module.vpc.public_subnet_ids
}

output "private_subnet_ids" {
  value = module.vpc.private_subnet_ids
}

output "db_subnet_ids" {
  value = module.vpc.db_subnet_ids
}

output "igw_id" {
  value = module.vpc.igw_id
}

output "nat_gateway_id" {
  value = module.vpc.nat_gateway_id
}

output "bastion_security_group_id" {
  value = module.security_groups.bastion_security_group_id
}

output "alb_security_group_id" {
  value = module.security_groups.alb_security_group_id
}

output "app_security_group_id" {
  value = module.security_groups.app_security_group_id
}

output "bastion_instance_id" {
  value = module.ec2.bastion_instance_id
}

output "app_instance_id" {
  value = module.ec2.app_instance_id
}

output "db_instance_id" {
  value = module.ec2.db_instance_id
}

output "rds_instance_id" {
  value = module.rds.db_instance_id
}

output "rds_endpoint" {
  value = module.rds.db_endpoint
}

output "rds_port" {
  value = module.rds.db_port
}

output "alb_arn" {
  description = "The ARN of the ALB"
  value       = module.alb.alb_arn
}

output "alb_target_group_arn" {
  description = "The ARN of the ALB target group"
  value       = module.alb.alb_target_group_arn
}