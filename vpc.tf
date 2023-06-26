resource "random_string" "suffix" {
  length  = 8
  special = false
}

module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = ">= 3.2.0"

  name = local.environment
  cidr = var.cidr_block
  azs  = data.aws_availability_zones.available.names
  /*
  private_subnets = [
    cidrsubnet(var.cidr_block, 8, 11),
    cidrsubnet(var.cidr_block, 8, 21),
    cidrsubnet(var.cidr_block, 8, 31)
  ]
 */
  public_subnets = [
    cidrsubnet(var.cidr_block, 8, 41),
    cidrsubnet(var.cidr_block, 8, 51),
    #    cidrsubnet(var.cidr_block, 8, 61)
  ]
  /*
  database_subnets = [
    cidrsubnet(var.cidr_block, 8, 111),
    cidrsubnet(var.cidr_block, 8, 121),
    cidrsubnet(var.cidr_block, 8, 131)
  ]
*/

  #  create_database_subnet_route_table = true

  /*
  enable_nat_gateway     = var.enable_nat_gateway
  single_nat_gateway     = var.single_nat_gateway
  one_nat_gateway_per_az = var.one_nat_gateway_per_az

  enable_vpn_gateway = var.enable_vpn_gateway
*/
  enable_dns_hostnames = true

  tags = merge(
    {
      environment = local.environment
      CIDR        = var.cidr_block
    },
    lookup(local.tags, "general", {}),
  )


}
