provider aws {
    region = "us-east-1"
}


module vpc {
    source = "../../module/vpc"

    vpc_cidr = "10.0.0.0/16"

    subnet1_cidr = "10.0.1.0/24"

    environment = "stage"
}

output subnet_id {
    value = module.vpc.subnet_id
}