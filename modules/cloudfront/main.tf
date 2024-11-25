resource "aws_cloudfront_distribution" "cdn" {
  origin {
    domain_name = var.origin_dns_name
    origin_id   = "web-origin"
  }

  enabled = true

  default_cache_behavior {
    target_origin_id       = "web-origin"
    viewer_protocol_policy = "redirect-to-https"

    forwarded_values {
      query_string = false
    }
  }

  viewer_certificate {
    acm_certificate_arn = var.certificate_arn
    ssl_support_method  = "sni-only"
  }

  restrictions {
    geo_restriction {
      restriction_type = "none"
    }
  }

  tags = {
    Name = "cdn"
  }
}

output "cloudfront_url" {
  value = aws_cloudfront_distribution.cdn.domain_name
}
