provider "aws" {
  region = var.region
}

resource "aws_instance" "web" {
  ami           = "ami-0c02fb55956c7d316"
  instance_type = var.instance_type
  key_name      = var.key_name

  user_data = file("user_data.sh")

  tags = {
    Name = var.project_name
  }
}

resource "aws_cloudwatch_metric_alarm" "ec2_recovery" {
  alarm_name          = "${var.project_name}-Recovery-Alarm"
  comparison_operator = "GreaterThanThreshold"
  evaluation_periods  = "2"
  metric_name         = "StatusCheckFailed_System"
  namespace           = "AWS/EC2"
  period              = "60"
  statistic           = "Minimum"
  threshold           = "0"
  alarm_actions       = [aws_instance.web.id]
  dimensions = {
    InstanceId = aws_instance.web.id
  }
}
