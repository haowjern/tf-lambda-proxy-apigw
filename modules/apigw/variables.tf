variable "name" {
  description = "The name of the REST API"
}

variable "stage" {
  description = "The stage name for the API deployment (production/staging/etc..)"
}

variable "binary_type" {
  description = "The list of binary media types supported by the RestApi"
  type        = list
  default     = ["*/*"]
}

variable "minimum_compression_size" {
  description = "The list of binary media types supported by the RestApi"
  default     = 0
}

variable "method" {
  description = "The HTTP method"
  default     = "ANY"
}

variable "lambda_arn" {
  description = "The lambda arn"
}

variable "lambda_arn_invoke" {
  description = "The lambda invoke uri"
}

variable "endpoint_type" {
  type = string
  description = "The endpoint type supported by the RestApi: [https://www.terraform.io/docs/providers/aws/r/api_gateway_rest_api.html#types]"
  default = "EDGE"
}

variable "vpc_private_endpoint_id" {
  type = string
  description = "The VPC endpoint id used to connect to a Private API Gateway"
  default = null
}