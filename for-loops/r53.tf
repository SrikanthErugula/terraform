resource "aws_route53_record" "roboshop" {
  for_each = aws_instance.terraform # so ikkada for-each ni use chestunam so we need for_each sytax 
  zone_id = "${var.zone_id}"
  name    = "${each.key}.${var.domain_name}" # mongodb.daws86s.fun
  type    = "A"
  ttl     = 1
  records = [each.value.private_ip] # see in output_check file
  allow_overwrite = true # exist ayyi vunte avi fail avvakunda vatini overwrite or replace chestundi
}

#  records = [aws_instance.terraform[count.index]  ----> see notes  for detailed 