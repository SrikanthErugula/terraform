resource "aws_instance" "terraform" {
  ami           = "ami-09c813fb71547fc4f"
  instance_type = "t3.micro"
  vpc_security_group_ids = [aws_security_group.sg_terraform_allow.id]

  tags = {
    Name = "terraform"
    terraform = true # it is used to know like terrform tho create chesa ani cheptundi true ani vunte 
  }

   provisioner "local-exec"{
      #command = "echo ${self.private_ip} > inventory"
      command = " echo instances created "
      on_failure = continue # see notes
    }

}

resource "aws_security_group" "sg_terraform_allow" {
  name   = "sg_terraform_allow" # names anevi alredy exist ayyi vunte delete chesi or vere names ivvali
  #vpc_id = aws_vpc.example.id # no need bcz it will take direct it from default

  egress { # out
    from_port        = 0 # all ports need to allow
    to_port          = 0 # all ports needs ot allow
    protocol         = "-1" # it means all protocols needs to allow
    cidr_blocks      = ["0.0.0.0/0"] # from internet
    
  }

  ingress { # in
    from_port        = 0 # all ports need to allow
    to_port          = 0 # all ports needs ot allow
    protocol         = "-1" # it means all protocols needs to allow
    cidr_blocks      = ["0.0.0.0/0"] # from internet
    
  }

  tags = {
    Name = "sg_terraform_allow"
  }
}