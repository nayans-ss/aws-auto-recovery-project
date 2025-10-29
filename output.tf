output "instance_id" {
  description = "EC2 Instance ID"
  value       = aws_instance.web.id
}

output "public_ip" {
  description = "Public IP of the Web Server"
  value       = aws_instance.web.public_ip
}

output "web_url" {
  description = "Web App URL"
  value       = "http://${aws_instance.web.public_ip}"
}
