output "vpc_id" {
  description = "The ID of the VPC"
  value       = module.pe_vpc.vpc_id
}

output "vpc_cidr_block" {
  description = "The CIDR block of the VPC"
  value       = module.pe_vpc.vpc_cidr_block
}

output "public_subnets" {
  description = "The ID of public subnet"
  value       = module.pe_vpc.public_subnets
}

output "private_subnets" {
  description = "The ID of private subnet"
  value       = module.pe_vpc.private_subnets
}

output "private_subnets_cidr_blocks" {
  description = "The cidr_block of private subnet"
  value       = module.pe_vpc.private_subnets_cidr_blocks
}
