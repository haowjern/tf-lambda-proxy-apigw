output "http_method" {
  value = aws_api_gateway_method.request_method.http_method
}

output "url" {
  value = aws_api_gateway_deployment.deployment.invoke_url
}

output "url_hostname" {
  value = element(regex("^https://(.*com)/.*", aws_api_gateway_deployment.deployment.invoke_url), 0)
}

output "rest_api_id" {
  value = aws_api_gateway_rest_api.api.id
}

output "stage" {
  value = var.stage
}