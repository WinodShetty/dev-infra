resource "aws_acm_certificate" "expense" {
  domain_name       = "*.${var.domain_name}"
  validation_method = "DNS"
  
  tags = merge(
    var.common_tags,
    {
        Name = "${var.project_name}-${var.environment}"
    }
  )

  
}

resource "aws_route53_record" "expense" {
  for_each = {
    for dvo in aws_acm_certificate.expense.domain_validation_options : dvo.domain_name => {
      name   = dvo.resource_record_name
     
    }
  }
