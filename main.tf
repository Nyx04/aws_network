
# Module to deploy basic networking 
module "vpc-dev" {
  # source              = "../../../modules/aws_network"
  source              = "git::ssh://git@github.com/Nyx04/aws_network.git//aws_network"
  env                 = var.env
  vpc_cidr            = var.vpc_cidr
  private_cidr_blocks = var.public_subnet_cidrs
  prefix              = var.prefix
  default_tags        = var.default_tags
}