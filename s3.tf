resource "aws_s3_bucket" "default" {
  count         = local.enabled ? 1 : 0
  bucket        = local.bucket_name
  force_destroy = var.force_destroy
  
  tags = {
    owner = "mike"
    test = "no you test"
  }

  dynamic "object_lock_configuration" {
    for_each = var.object_lock_configuration != null ? [1] : []
    content {
      object_lock_enabled = "Enabled"
    }
  }
}
