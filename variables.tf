variable "vpc_name" {
  type        = string
  description = "The name to be assigned to the VPC."
}

variable "cidr" {
  type        = string
  description = "The cidr block to be assigned to the VPC."
}


variable "tags" {
  type        = map(string)
  description = "Tags to be applied to the resources"
  default     = {}
}

variable "vpc_flow_log_group" {
  type        = string
  description = "The name of the flow logs group."
}

variable "enable_dns_hostnames" {
  type        = bool
  description = "Set to true if you want to enable dns_hostnames."
  default     = null
}

variable "create_nat_gateway" {
  type        = bool
  description = "Set to false if you want to disable the creation of the Nat Gateway."
  default     = true
}

variable "create_public_subnets" {
  type        = bool
  description = "Set to false if you want to disable the creation of the public subnets.If you disable it, you need to disable the Nat Gateway as well as it is deployed here."
  default     = true
}

variable "create_private_subnets" {
  type        = bool
  description = "Set to false if you want to disable the creation of the private subnets."
  default     = true
}

variable "create_database_subnets" {
  type        = bool
  description = "Set to false if you want to disable the creation of the database subnets."
  default     = true
}

variable "igw_name" {
  type        = string
  description = "Name of the Internet Gateway"
  default     = ""
}

variable "public_subnets" {
  type        = list(string)
  description = "The CIDR of the public subnets that you want to be created."
  default     = []
}

variable "private_subnets" {
  type        = list(string)
  description = "The CIDR of the private subnets that you want to be created."
  default     = []
}

variable "database_subnets" {
  type        = list(string)
  description = "The CIDR of the database subnets that you want to be created."
  default     = []
}

variable "availability_zones" {
  type        = list(string)
  description = "The availability zone/s that you want to create."
  default     = []
}