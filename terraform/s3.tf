resource "aws_s3_bucket" "financials" {
  bucket        = "fff1"
  acl           = "private"
  force_destroy = true
  tags = {
    yor_trace = "13aa5878-e6d8-408f-8516-b5961b1551ab"
  }
}
