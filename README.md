# 🛡️ Resilient AWS Web App with Terraform + Auto Recovery

### 🚀 Overview
A simple yet powerful project that demonstrates how to **deploy and auto-recover** an EC2 instance using **Terraform**, **AWS CloudWatch**, and **user data automation**.

---

## 🎯 Goal
Automate infrastructure provisioning and ensure **self-healing** for better reliability — a core SRE concept.

---

## 🧱 Architecture
- Terraform deploys EC2 + Security Group
- User data script sets up Apache web server
- CloudWatch Alarm automatically recovers EC2 instance on failure

---

## ⚙️ Deployment Steps
```bash
terraform init
terraform plan
terraform apply
