provider "aws" {
  region = "us-east-1"
}

resource "aws_security_group" "example" {
  name        = "example"
  description = "Allow HTTP traffic"

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "server" {
  ami           = "ami-00874d747dde814fa"
  instance_type = "t2.micro"

  vpc_security_group_ids = [aws_security_group.example.id]
}
