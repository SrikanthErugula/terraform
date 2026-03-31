output "instances_output" {
  value = aws_instance.terraform # so idhi ec2.tf lo name vuntthdi so akkada numchi tisukovali
}

output "route53_record_output"{
    value = aws_route53_record.roboshop
}