locals{
    instance_type = "t3.micro" # u can refer in ec2.tf file lo for access or excute...
     common_name = "${var.project}-${var.environment}" # so result ila name vastundhi... roboshop-dev
    ami_id = data.aws_ami.joindevops.id
    ec2_tags = merge(
      var.common_tags,
      {
        Name = "${local.common_name}-local-demo"
      }
    ) 
    # see in notes for detailed
}

