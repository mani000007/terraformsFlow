provider "aws" {
    region= "us-east-1"
}
resource "aws_instance" "server" {
  ami           = "ami-00874d747dde814fa"
  instance_type = "t2.micro"
  subnet_id     = "subnet-0f5e1db05acd752b2"
  security_groups= ["sg-05b3f1a6fd83be07c"]
  provisioner "remote-exec" {
  inline = [
    "sudo yum update -y",
    "sudo yum install -y docker",
    "sudo systemctl start docker",
    "sudo docker run --name my-nginx -p 80:80 -d nginx"
  ]
  tags = {
    Name = "terraform"
  }
    
}
