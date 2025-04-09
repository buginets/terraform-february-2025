variable aws_key {
 default = "Hello-key"
 type = string
}

variable region {
   default = "us-east-2"
   type = string
}

variable port1 {
    default = 22
    type = number
}

variable port {
    default = [22, 80]
    type = list
}