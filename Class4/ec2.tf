resource "aws_instance" "web" {
  ami           = var.ec2[0].ami
  instance_type = var.ec2[0].type

  
}
resource "aws_instance" "web2" {
  ami           = var.ec2[1].ami
  instance_type = var.ec2[1].type

}