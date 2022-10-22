locals {
    s3 = {
        bucket_name = "que-lindo-es-mi-bucket-itba-cloud"
        path        = "../../resources"

        objects = {
            index = {
                filename     = "html/index.html"
                content_type = "text/html"
            }
            error = {
                filename     = "html/error.html"
                content_type = "text/html"
            }
            image1 = {
                filename     = "images/image1.png"
                content_type = "image/png"
            }
            image2 = {
                filename     = "images/image2.jpg"
                content_type = "image/jpeg"
            }
        }
    }
}