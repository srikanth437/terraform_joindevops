resource "aws_route53_record" "www" {
  for_each = aws_instance.example
  zone_id  = var.zone_id
  #if you add you vars then it is called as interpolation
  name            = "${each.key}.${var.zone_name}" #mangodb.srikanth.digital.domain_name
  type            = "A"
  ttl             = 1
  records         = [each.value.private_ip]
  allow_overwrite = true
}
