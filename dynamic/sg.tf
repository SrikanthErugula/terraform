resource "aws_security_group" "roboshop_instance" {
  name   = "roboshop-strict-sg"

  egress { # out ... # it is  called block
    from_port        = 0 # from port 0 to to port 0 means all ports
    to_port          = 0 
    protocol         = "-1" # -1 means all protocols
    cidr_blocks      = ["0.0.0.0/0"] # internet
  }
  
#   # block
  dynamic "ingress" { # in # so ikkdada edhi ithe repeated avuthundho dhaniki dynamic add cheyali
    for_each = toset(var.ingress_ports) # so ikkada list convert into map
    content{ # so ikkada which content  ithe repeted avuthundho adhi content tho indicate chayli
        from_port        = ingress.value # here ingress is special key word will it give form terraform
        to_port          = ingress.value
        protocol         = "tcp" # specific ports open cheyalante u need give tcp
        cidr_blocks      = ["0.0.0.0/0"] # internet
    }
  }

  tags = {
    Name = "roboshop-strict-sg"
  }

}