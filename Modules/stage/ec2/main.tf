provider aws {
    region = "us-east-1"
}

module ec2 {
    source = "../../module/ec2"

    instance_type = "t2.micro"
    
    subnet_id = data.terraform_remote_state.vpc.outputs.subnet_id
}

data terraform_remote_state vpc {
    backend = "local"
    config = {
        path = "../vpc/terraform.tfstate"
    }
}