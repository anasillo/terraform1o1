# ---------------------------------------------------------------------------
# Variables
# ---------------------------------------------------------------------------

variable "bucket_name" {
    description = "Bucket name for S3 static website"
    type        = string
    default     = "what-a-pretty-bucket-itba-cloud"
}

variable "environment" {
    description = "Bucket name for S3 static website"
    type        = string
}