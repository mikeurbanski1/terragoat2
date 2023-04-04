resource "aws_s3_bucket" "default" {
  count         = local.enabled ? 1 : 0
  bucket        = local.bucket_name
  force_destroy = var.force_destroy

  dynamic "object_lock_configuration" {
    for_each = var.object_lock_configuration != null ? [1] : []
    content {
      object_lock_enabled = "Enabled"
    }
  }
  tags = {
    yor_trace = "4c8356ad-a0e9-4101-90a8-7e0613f2077b"
  }
}
