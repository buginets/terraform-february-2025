variable "aws_key" {
  default = "Hello-key"
  type    = string
}

variable "region" {
  default = "us-east-2"
  type    = string
}

variable "port1" {
  default = 22
  type    = number
}

variable "port" {
  default = [22, 80]
  type    = list(any)
}

# variable "ec2" {
#   type = object({
#     ami  = string
#     type = string
#     tags = map(string)
#   })
#   default = {
#     ami  = "ami-0100e595e1cc1ff7f"
#     type = "t2.micro"
#     tags = {
#       Environment = "dev"
#       Team        = "DevOps"
#       Project     = "Kaizen"
#     }
#   }
# }

variable "ec2" {
  type = list(object({
    ami  = string
    type = string
    
  }))
  default = [
    {
    ami  = "ami-0100e595e1cc1ff7f"
    type = "t2.micro"
    }, 
    {
    ami  = "ami-0c3b809fcf2445b6a"
    type = "t2.micro"
    }
  ]
}