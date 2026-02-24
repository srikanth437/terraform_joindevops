resource "aws_route53_record" "www" {
  count   = 9
  zone_id = var.zone_id
  #if you add you vars then it is called as interpolation
  name = "${var.instance_name[count.index]}.${var.zone_name}" #mangodb.srikanth.digital.domain_name
  type = "A"
  ttl  = 1
  records = [aws_instance.example[count.index].private_ip]
}
