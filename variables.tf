variable "name" {
  description = "The service name."
  type        = "string"
}

variable "environment" {
  description = "Environment tag, e.g prod."
  type        = "string"
}

variable "logs_s3_bucket" {
  description = "S3 bucket for storing Application Load Balancer logs."
  type        = "string"
}

variable "alb_default_certificate_arn" {
  description = "The ARN of the default certificate to be attached to the ALB."
  type        = "string"
}

variable "alb_certificate_arns" {
  description = "The ARNs of the certificates to be attached to the ALB."
  type        = "list"
  default     = []
}

variable "alb_vpc_id" {
  description = "VPC ID to be used by the ALB."
  type        = "string"
}

variable "alb_subnet_ids" {
  description = "Subnets IDs for the ALB."
  type        = "list"
}

variable "alb_ssl_policy" {
  description = "The SSL policy (aka security policy) for the Application Load Balancer that specifies the TLS protocols and ciphers allowed.  See <https://docs.aws.amazon.com/elasticloadbalancing/latest/application/create-https-listener.html#describe-ssl-policies>."
  type        = "string"
  default     = "ELBSecurityPolicy-2016-08"
}

variable "health_check_path" {
  description = "The destination for the health check requests to the container."
  type        = "string"
  default     = "/"
}

variable "health_check_success_codes" {
  description = "The HTTP codes to use when checking for a successful response from the container. You can specify multiple values (for example, '200,202') or a range of values (for example, '200-299')."
  type        = "string"
  default     = "200"
}

variable "container_port" {
  description = "The port on which the container will receive traffic."
  type        = "string"
  default     = 443
}

variable "container_protocol" {
  description = "The protocol to use to connect with the container."
  type        = "string"
  default     = "HTTPS"
}
