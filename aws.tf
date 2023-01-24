provider "aws"{
    region="us-east-1"
}

resource "aws_instance" "server" {
  ami           = "ami-00874d747dde814fa"
  instance_type = "t2.medium"
  subnet_id="subnet-0b217732b10d0aaf1"
  security_groups=["sg-0a9b97852f6d8f294"]

  tags = {
    Name = "terraform-server"
  }
}
