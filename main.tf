module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  name = "Jenkins-server"

  ami                    = "ami-007855ac798b5175e"
  instance_type          = "t2.micro"
  key_name               = "ansible-machine-key"
  vpc_security_group_ids = ["sg-0e33fb21c7ad26a92"]
    subnet_id              = "subnet-00500ea02bd2bfbff"
  

  tags = {
    Jenkins-server   = "true"
    Environment = "dev"
  }
}

