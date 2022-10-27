# ---------------------------------------------------------------------------
# Main resources - baseline configuration for s3
# ---------------------------------------------------------------------------

resource "aws_s3_bucket" "this" {
    bucket = "${var.bucket_name}-${var.environment}"
    acl    = "public-read"
    policy = file("${path.module}/templates/policy.json")

    website {
        index_document = "index.html"
        error_document = "error.html"
    }

    lifecycle_rule {
        enabled = true

        transition {
            days          = 30
            storage_class = "STANDARD_IA"
        }
    }
}

resource "aws_s3_bucket_object" "bucket_main" {
    key          = "index.html"
    bucket       = aws_s3_bucket.this.id
    source       = "../../resources/html/index.html"
    content_type = "text/html"
}

resource "aws_s3_bucket_object" "bucket_error" {
    key          = "error.html"
    bucket       = aws_s3_bucket.this.id
    source       = "../../resources/html/error.html"
    content_type = "text/html"
}

resource "aws_s3_bucket_object" "image1" {
    key    = "images/image1.png"
    bucket = aws_s3_bucket.this.id
    source = "../../resources/images/image1.png"
}

resource "aws_s3_bucket_object" "image2" {
    key    = "images/image2.jpg"
    bucket = aws_s3_bucket.this.id
    source = "../../resources/images/image2.jpg"
}