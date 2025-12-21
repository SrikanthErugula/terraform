resource "aws_route53_record" "roboshop" {
  for_each = aws_instance.terraform
  zone_id = "${var.zone_id}"
  name    = "${each.key}.${var.domain_name}" # mongodb.daws86s.fun
  type    = "A"
  ttl     = 1
  records = [each.value.private_ip] # instance_type = each.value ... it is in ec2.tf lo vundi
  allow_overwrite = true # exist ayyi vunte avi fail avvakunda vatini overwrite or replace chestundi
}

#  records = [aws_instance.terraform[count.index]  ----> see notes  for detailed 