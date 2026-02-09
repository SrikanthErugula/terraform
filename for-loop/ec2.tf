resource "aws_instance" "terraform" {
    #for_each = var.instances # see notes # need on 
    for_each = toset(var.instances) # see in notes
    ami = "ami-09c813fb71547fc4f"
    #instance_type = each.value # need on 
    
    instance_type = "t3.micro" # so all items ki same kabbati we need to access directly 
    vpc_security_group_ids = [aws_security_group.allow_all.id]
    tags = {
        #Name = each.key # mongodb, mysql, redis..... etc # need on 
        Name = each.value
        Terraform = "true"
    }
}

resource "aws_security_group" "allow_all" {
  name   = "allow-all"

  egress {
    from_port        = 0 # from port 0 to to port 0 means all ports
    to_port          = 0 
    protocol         = "-1" # -1 means all protocols
    cidr_blocks      = ["0.0.0.0/0"] # internet
  }

  ingress {
    from_port        = 0 # from port 0 to to port 0 means all ports
    to_port          = 0 
    protocol         = "-1" # -1 means all protocols
    cidr_blocks      = ["0.0.0.0/0"] # internet
  }

  tags = {
    Name = "allow-all"
  }

}

resource "aws_instance" "terraform" {
    for_each = toset(var.instances) # see in notes
    ami = "ami-09c813fb71547fc4f"
    instance_type = "t3.micro" # so all items ki same kabbati we need to access directly 
    vpc_security_group_ids = [aws_security_group.allow_all.id]
    tags = {
        Name = each.value
        Terraform = "true"
    }
}

resource "aws_security_group" "allow_all" {
  name   = "allow-all"

  egress {
    from_port        = 0 # from port 0 to to port 0 means all ports
    to_port          = 0 
    protocol         = "-1" # -1 means all protocols
    cidr_blocks      = ["0.0.0.0/0"] # internet
  }

  ingress {
    from_port        = 0 # from port 0 to to port 0 means all ports
    to_port          = 0 
    protocol         = "-1" # -1 means all protocols
    cidr_blocks      = ["0.0.0.0/0"] # internet
  }

  tags = {
    Name = "allow-all"
  }

}
















