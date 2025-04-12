module "vpc" {
  source  = "buginets/vpc/aws"
  version = "0.2.0"
  
  vpc_cidr = "172.31.0.0/16"
  subnet1_cidr = "172.31.1.0/24"
  subnet2_cidr = "172.31.2.0/24"
  environment = "qa"
}