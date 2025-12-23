resource "aws_instance" "terraform" {
  ami           = local.ami_id # here values updated in variable.tf lo ikkada access chestunnam anthe
  instance_type = local.instance_type # here values updated in local.tf lo ikkada access chestunnam anthe
  vpc_security_group_ids = [aws_security_group.sg_terraform_allow.id]

  tags = local.ec2_tags
}

resource "aws_security_group" "sg_terraform_allow" {
  name   = "${local.common_name}-sg-terraform-allow" # names anevi alredy exist ayyi vunte delete chesi or vere names ivvali
  #vpc_id = aws_vpc.example.id # no need bcz it will take direct it from default

  egress {
    from_port        = var.egress_from_port # all ports need to allow
    to_port          = var.egress_to_port # all ports needs ot allow
    protocol         = var.protocol # it means all protocols needs to allow
    cidr_blocks      = var.cidr # from internet
    
  }

  ingress {
    from_port        = var.ingress_from_port # all ports need to allow
    to_port          = var.ingress_to_port # all ports needs ot allow
    protocol         = var.protocol # it means all protocols needs to allow
    cidr_blocks      = var.cidr # from internet
    
  }

  tags = {
    name   = "${local.common_name}-sg-terraform-allow"
  }
}
# within {} we called as map or object 

## Comment