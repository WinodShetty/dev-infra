resource "aws_acm_certificate" "expense" {
  domain_name       = "*.${var.domain_name}"
  validation_method = "DNS"

  
}


