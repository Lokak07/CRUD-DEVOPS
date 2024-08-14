module "ec2_instance_monitoring" {
  source  = "terraform-aws-modules/ec2-instance/aws"

  name = "monitoring-server"

  instance_type          = "t2.medium"
  ami = var.ami
  key_name               = "shakthi-manjunathan"
  monitoring             = true
  vpc_security_group_ids = [module.web_server_sg.security_group_id]
  subnet_id = module.vpc.public_subnets[0]
  associate_public_ip_address = true



  tags = {
    Terraform   = "true"
    Environment = "dev"
    usage = "monitoring"
  }
}
