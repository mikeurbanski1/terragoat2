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
}

resource "random_integer" "priority" {
  min = 1
  max = 50000
}


resource "random_integer" "priority2" {
  min = 1
  max = 50000
}

resource "random_integer" "priority3" {
  min = 1
  max = 50000
}


resource "random_integer" "priority4" {
  min = 1
  max = 50000
}
