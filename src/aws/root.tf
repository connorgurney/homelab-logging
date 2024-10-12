# AWS configuration
data "aws_partition" "current" {}
data "aws_region" "current" {}
data "aws_caller_identity" "current" {}

# Local variables
locals {
  cloudtrail_trail_name = "connorgurney-homelab-logging-${data.aws_region.current.name}"
  cloudtrail_trail_path = "arn:${data.aws_partition.current.partition}:cloudtrail:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:trail/${local.cloudtrail_trail_name}"
  s3_bucket_name        = "connorgurney-homelab-logging-${data.aws_region.current.name}"
}

# CloudTrail trail
resource "aws_cloudtrail" "this" {
  depends_on = [aws_s3_bucket_policy.this]

  name = local.cloudtrail_trail_name

  # Destination
  s3_bucket_name = aws_s3_bucket.this.id

  # Events
  include_global_service_events = false

  # Security
  enable_log_file_validation = true
}

# Bucket for CloudTrail to store logs in
resource "aws_s3_bucket" "this" {
  bucket = local.s3_bucket_name
}

# Bucket policy
resource "aws_s3_bucket_policy" "this" {
  bucket = aws_s3_bucket.this.id
  policy = data.aws_iam_policy_document.this.json
}

data "aws_iam_policy_document" "this" {
  # Statement to allow CloudTrail to read the bucket's access control list
  statement {
    sid    = "AWSCloudTrailAclCheck20150319"
    effect = "Allow"

    principals {
      type        = "Service"
      identifiers = ["cloudtrail.amazonaws.com"]
    }

    resources = [aws_s3_bucket.this.arn]
    actions   = ["s3:GetBucketAcl"]

    condition {
      test     = "StringEquals"
      variable = "aws:SourceArn"
      values   = [local.cloudtrail_trail_path]
    }
  }

  # Statement to allow CloudTrail to write to the bucket
  statement {
    sid    = "AWSCloudTrailWrite20150319"
    effect = "Allow"

    principals {
      type        = "Service"
      identifiers = ["cloudtrail.amazonaws.com"]
    }

    resources = ["${aws_s3_bucket.this.arn}/AWSLogs/${data.aws_caller_identity.current.account_id}/*"]
    actions   = ["s3:PutObject"]

    condition {
      test     = "StringEquals"
      variable = "s3:x-amz-acl"
      values   = ["bucket-owner-full-control"]
    }

    condition {
      test     = "StringEquals"
      variable = "aws:SourceArn"
      values   = [local.cloudtrail_trail_path]
    }
  }
}
