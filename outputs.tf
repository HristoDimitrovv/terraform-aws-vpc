output "vpc_id" {
  description = "The ID of the VPC."
  value       = aws_vpc.vpc.id
}

output "public_subnets" {
  description = "The public subnets ID."
  value       = aws_subnet.public_subnets[*].id
}

output "private_subnets" {
  description = "The private subnets ID."
  value       = aws_subnet.private_subnets[*].id
}

output "database_subnets" {
  description = "The database subnets ID."
  value       = aws_subnet.database_subnets[*].id
}