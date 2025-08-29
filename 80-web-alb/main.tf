module "alb" {
  source = "terraform-aws-modules/alb/aws"
  internal = false
  # expense-dev-app-alb
  name    = "${var.project_name}-${var.environment}-web-alb"
 
}