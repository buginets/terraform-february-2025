resource "aws_instance" "web" {
  ami           = "ami-00a929b66ed6e0de6"  # ami id of AWS Linux 2023
  instance_type = "t2.micro"
  #create_before_destroy = true       // creates new instance before destroying old one
  #associate_public_ip_address = true   //creates public Ip
  #availability_zone = "us-east-1d"      
  subnet_id = "subnet-0810b7a75c29e0179"   #creating in specific subnet
  #key_name = "my-laptop-key" //hardcoded key pair
  key_name = aws_key_pair.deployer.key_name   // softcoded key-pair
  vpc_security_group_ids = [aws_security_group.allow_tls.id]
  user_data = file("apache.sh") # installing httpd(apache)
  tags = {
    Name = "HelloWorld"
  }
}

output ec2_public_ip {
  value = aws_instance.web.public_ip
  
}
