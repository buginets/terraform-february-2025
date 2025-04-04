resource "aws_key_pair" "deployer" {
  key_name   = "bastion-key"
  public_key = file("~/.ssh/id_rsa.pub")
}


resource "aws_s3_bucket" "example" {
  bucket = "kaizen-adiletba"

  
}
resource "aws_s3_object" "object" {
  #bucket = aws_s3_bucket.example.bucket
  depends_on = [aws_s3_bucket.example]
  bucket = "kaizen-adiletba"
  key    = "provider.tf"
  source = "provider.tf"

  
}