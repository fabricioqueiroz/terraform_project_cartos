variable "ssl_certificate_arn" {
  description = "ARN of the SSL certificate for CloudFront"
  type        = string
}

variable "key_name" {
  description = "Name of the EC2 key pair"
  type        = string
}
