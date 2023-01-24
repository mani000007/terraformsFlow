provider "aws"{
    region="us-east-1"
}

resource "aws_instance" "server" {
  ami           = "ami-00874d747dde814fa"
  instance_type = "t2.micro"
  subnet_id="subnet-0e8790f64941341a2"
  security_groups=["sg-0bb446d22d2863447"]
 
  tags = {
    Name = "terraform-server"
  }
}
