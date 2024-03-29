module "vpc" {
  source = "https://registry.terraform.io/modules/terraform-aws-modules/vpc/aws"

  name = "my-vpc"
  cidr = "10.0.0.0/16"

  azs             = "us-east-1"
  private_subnets = "10.0.1.0/24"
  public_subnets  = "10.0.101.0/24"
  enable_nat_gateway = false
  enable_vpn_gateway = false

  tags = {
    Terraform = "true"
    Environment = "dev"
  }
}