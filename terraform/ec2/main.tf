resource "aws_instance" "devops_ec2" {
  ami           = var.ami_id
  instance_type = var.instance_type

  tags = {
    Name = "DevOps-Srinivas-EC2"
  }
}
