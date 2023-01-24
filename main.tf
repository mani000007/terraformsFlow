provider "aws"{
    region="us-east-1"
}

resource "aws_instance" "server" {
  ami           = "ami-0b5eea76982371e91"
  instance_type = "t2.micro"
  subnet_id="subnet-0b217732b10d0aaf1"
  security_groups=["sg-0a9b97852f6d8f294"]

  tags = {
    Name = "terraform-server"
  }
}