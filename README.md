VPC Module

1. This module creates a VPC with optional number of AZs, Public, Private and Database subnets. 
2. The number of subnets depends on the number of AZs. You can create only one of each kind of subnet per AZ.
3. VPC flow logging is enabled by default and cannot be disabled.
4. All the subnets are optional and enabled by default, you can choose with a boolean (in the optional inputs) if you do not want to use any of the 3 kinds of subnets.
5. The public Subnet has an IGW and it gets a public IP assigned at launch.
6. The private subnet has an outbound internet access thru a NAT Gateway that is deployed in the public subnet (can be disabled with an optional input).
7. The database subnet has only a local route and no access to the internet.


### USAGE ###

```hcl
module "vpc" {
  source  = "HristoDimitrovv/vpc/aws"
  version = "1.0.1"

  vpc_name                 = "vpc_name"
  cidr                     = "10.1.0.0/16"
  availability_zones       = ["us-east-1a", "us-east-1b"]
  public_subnets           = ["10.1.11.0/24", "10.1.12.0/24"]
  private_subnets          = ["10.1.21.0/24", "10.1.22.0/24"]
  database_subnets         = ["10.1.31.0/24", "10.1.32.0/24"]
  vpc_flow_log_group       = "vpc_flow_logs_name"

    tags = {
    Deployment = "terraform"
    Environment = "dev"
  }
}
```


### Example If you do not want to create certain subnets ###


```hcl
module "vpc" {
  source  = "HristoDimitrovv/vpc/aws"
  version = "1.0.1"

  vpc_name                 = "vpc_name"
  cidr                     = "10.1.0.0/16"
  availability_zones       = ["us-east-1a"]
  public_subnets           = ["10.1.11.0/24"]
  create_private_subnets   = false
  create_database_subnets  = false
  create_nat_gateway       = false
  vpc_flow_log_group       = "vpc_flow_logs_name"

    tags = {
    Deployment = "terraform"
    Environment = "dev"
  }
}
```