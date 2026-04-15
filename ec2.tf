resource "aws_instance" "server" {
  ami           = "ami-0f58b397bc5c1f2e8"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.public1.id

  tags = {
    Name = "terraform-ec2"
  }
}