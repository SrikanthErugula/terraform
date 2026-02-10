resource "aws_instance" "terraform" {
  ami           = "ami-0220d79f3f480ecf5"
  instance_type = "t3.micro"
  vpc_security_group_ids = [aws_security_group.sg_terraform_allow.id]

  tags = {
    Name = "terraform"
    terraform = true # it is used to know like terrform tho create chesa ani cheptundi true ani vunte 
  }

   provisioner "local-exec"{
      command = "echo ${self.private_ip} > inventory"
      #command = " echo instances created "
      #on_failure = continue # see notes
    }

# here provisinor by default creation time lone run avuthundi....
# if u want run in destroy time u can use the below cmd as well

     provisioner "local-exec"{
      command = "echo Instance is destroyed"
      when    = destroy
    }
# so intha varaku run cheste automatic ga inventoy file create ayyi andhuloki private ip vastundhi....
# enni local exec ayina kuda ivvachu

    connection { # for connecting in browser with the below credentials
      type     = "ssh"
      user     = "ec2-user"
      password = "DevOps321"
      host     = self.public_ip
    }

    provisioner "remote-exec" { # this is for server creation code
      inline = [
        "sudo dnf install nginx -y",
        "sudo systemctl start nginx"
      ]
    }

    provisioner "remote-exec" { # this is for server stopping code
      inline = [
        "sudo systemctl stop nginx",
        "echo 'successfully stopped nginx server' "
      ]
      when = destroy
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
# within {} we called as map or object 

## Comment