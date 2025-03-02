resource "aws_route53_record" "mx_records" {
  zone_id = "Z0112750236HR5FN1MXQ2"
  name    = "hiderland.com"
  type    = "MX"
  ttl     = 3600

  records = [
    "10 mx1.improvmx.com.",
    "20 mx2.improvmx.com."
  ]
}

resource "aws_route53_record" "spf_txt_record" {
  zone_id = "Z0112750236HR5FN1MXQ2"
  name    = "hiderland.com"
  type    = "TXT"
  ttl     = 3600

  records = [
    "v=spf1 include:spf.improvmx.com ~all"
  ]
}
