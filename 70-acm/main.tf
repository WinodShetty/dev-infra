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


