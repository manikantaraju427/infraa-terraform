module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"

  name = "single-instance"

  instance_type          = "t2.micro"
  key_name               = "keypair"
  monitoring             = true
  vpc_security_group_ids = ["sg-042c77b2519cfaec2"]
  subnet_id              = "subnet-01cbaaff9d4c8aab4"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
