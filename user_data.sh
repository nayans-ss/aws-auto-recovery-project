#!/bin/bash
sudo yum update -y
sudo yum install -y httpd
echo "<h1>Welcome to Resilient AWS Web App</h1>" > /var/www/html/index.html
systemctl start httpd
systemctl enable httpd
