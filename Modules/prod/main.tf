provider aws {
    region = "us-east-2"
}

module "vpc" {
    source = "../vpc"

    vpc_cidr = "10.0.0.0/16"
    subnet1_cidr = "10.0.1.0/24"
    environment = "prod"
}