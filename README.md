# Terraform Project

This project automates the provisioning of a scalable AWS infrastructure, including the following components:

- An **EC2 instance** running **Docker** and **NGINX** for application hosting.
- A **Virtual Private Cloud (VPC)** to provide network isolation and control.
- A **CloudFront distribution** for content delivery and improved performance.
- Optional **SSL configuration** to secure communication via HTTPS.

### Dockerized Application

The EC2 instance will be configured to run a Docker container, where **NGINX** serves as the web server for hosting static content. Docker allows for easy and consistent deployment of the application across different environments. The use of Docker ensures that the application runs in an isolated environment, avoiding potential conflicts with other applications or system dependencies.

- **Docker**: The application runs in a containerized environment, making it portable, scalable, and isolated.
- **NGINX**: A high-performance web server that serves static files and acts as a reverse proxy for dynamic content.

This setup ensures a robust, high-performance environment for hosting web applications with easy scaling.

## Prerequisites

Before starting, ensure you have:

1. **Terraform** installed. [Download Terraform](https://www.terraform.io/downloads.html)

2. Configured your **AWS credentials** in your environment. For example:
   ```bash
   export AWS_ACCESS_KEY_ID="your_access_key_id"
   export AWS_SECRET_ACCESS_KEY="your_secret_access_key"

## Steps to Execute

1. **Initialize Terraform**  
   Prepare your working directory by downloading the necessary provider plugins:  
   ```bash
   terraform init

2. **Review the Execution Plan**  
   Generate an execution plan to preview the changes Terraform will make to your infrastructure:  
   ```bash
   terraform plan

3. **Apply the Configuration**  
   Execute the planned changes to create or update your infrastructure:  
   ```bash
   terraform apply
   
## Details

- Once the infrastructure is successfully deployed, the application will be accessible through the **CloudFront URL** provided in the Terraform output.
- Copy the URL and paste it into your browser to verify that the application is running correctly.
