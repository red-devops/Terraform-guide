module "pe_vpc" {
  source = "git::https://github.com/terraform-aws-modules/terraform-aws-vpc.git"

  name = local.name
  cidr = "10.2.0.0/20"

  azs             = ["${var.region}a"]
  private_subnets = ["10.2.0.0/24"]
  public_subnets  = ["10.2.8.0/24"]

  public_dedicated_network_acl  = true
  private_dedicated_network_acl = true
  manage_default_network_acl    = false

  public_inbound_acl_rules  = concat(local.network_acls["default_inbound"])
  public_outbound_acl_rules = concat(local.network_acls["default_outbound"])

  enable_ipv6 = false

  enable_nat_gateway = true
  single_nat_gateway = true

  vpc_tags = {
    Name = "vpc-platform-engineering"
  }
}
