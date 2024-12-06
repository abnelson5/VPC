module "vpc" {
  source               = "./modules/vpc"
  vpc_name             = "Test-VPC"
  cidr_block           = "10.0.0.0/16"
  public_subnet_count  = 3
  private_subnet_count = 3
  public_subnet_cidrs  = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  private_subnet_cidrs = ["10.0.4.0/24", "10.0.5.0/24", "10.0.6.0/24"]
}

output "vpc_id" {
  value = module.vpc.vpc_id
}

output "public_subnet_ids" {
  value = module.vpc.public_subnet_ids
}

output "private_subnet_ids" {
  value = module.vpc.private_subnet_ids
}
