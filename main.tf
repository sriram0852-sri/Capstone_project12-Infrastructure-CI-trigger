
data "aws_caller_identity" "current" {}

resource "aws_s3_bucket" "project12" {
  bucket = "capstone-project12-plan-${data.aws_caller_identity.current.account_id}"

  tags = {
    Name        = "Project12-Terraform-Plan"
    Environment = "Testing"
    Project     = "Capstone-12"
  }
}
