output "bucket_id" {
  value = resource.aws_s3_bucket.this.id

  sensitive = true
}