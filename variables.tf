variable "name" {
  description = "The service name."
}

variable "environment" {
  description = "Environment tag, e.g prod."
}

variable "zone_name" {
  description = "Route53 zone name."
}

variable "logs_s3_bucket" {
  description = "S3 bucket for storing Application Load Balancer logs."
}

variable "alb_vpc_id" {
  description = "VPC ID to be used by the ALB."
}

variable "alb_subnet_ids" {
  description = "Subnets IDs for the ALB."
  type        = "list"
}

variable "http_container_health_check_path" {
  description = "The destination for the health check requests to the HTTP container."
  type        = "string"
  default     = "/"
}

variable "https_container_health_check_path" {
  description = "The destination for the health check requests to the HTTPS container."
  type        = "string"
  default     = "/"
}

variable "http_container_port" {
  description = "The port on which the container will receive traffic. Set to 0 to disable http."
  default     = 80
}

variable "http_container_protocol" {
  description = "The protocol to use to connect with the container."
  default     = "HTTP"
}

variable "https_container_port" {
  description = "The port on which the container will receive traffic. Set to 0 to disable https."
  default     = 443
}

variable "https_container_protocol" {
  description = "The protocol to use to connect with the container."
  default     = "HTTPS"
}
