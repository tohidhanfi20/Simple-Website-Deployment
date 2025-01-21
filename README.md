# Simple Website Deployment Using Your Custom Domain

This repository contains the Terraform configuration files and instructions to deploy a simple website on AWS. The project demonstrates how to:

1. Launch an EC2 instance using Terraform.
2. Host a simple HTML website on Apache.
3. Map a custom domain to the website using Route 53.

## Overview
The repository helps you set up a basic website deployment workflow using Infrastructure as Code (IaC) with Terraform and AWS services. The steps include:

○ Creating an EC2 instance and installing the Apache web server.
○ Deploying a static HTML website.
○ Mapping a custom domain to the instance using Route 53.

## Prerequisites
Before starting, ensure you have the following:

1. AWS Account: With Route 53 configured for your domain.
2. Tools Installed:
                   ○ Terraform (Download Terraform in local machine or aws instance)
                   ○ AWS CLI (Install AWS CLI)
                   ○ Git (Download Gitbash to push from local to remote repository)

3. Domain Name: Registered in Route 53.
4. AWS CLI Configuration: Configure credentials using the following command:
   ```bash
      aws configure  
   ```
## START HERE

### Step 1: Clone the Repository
Clone this repository to your local machine:
  ```bash
         git clone https://github.com/yourusername/simple-website-deployment.git  
         cd simple-website-deployment  
  ```
### Step 2: Update the Terraform Configuration
1. Open main.tf.
2. Replace the placeholder AMI ID with a valid one for your region (e.g., ami-0c02fb55956c7d316 for Amazon Linux 2 in ap-south-1).
3. Replace <your-domain-name> with your actual domain name in the Route 53 configuration.

### Step 3: Initialize Terraform
1. Initialize the project directory:
```bash
      terraform init    
```
2. Validate the configuration:
```bash
      terraform validate    
```
3. Preview the resources to be created:
```bash
      terraform plan      
```
### Step 4: Deploy the Infrastructure

1. Apply the configuration to deploy resources:
```bash
      terraform apply      
```
2. Confirm by typing yes when prompted.

### Step 5: Access the Website

1. After successful deployment, note the public IP address of the EC2 instance displayed in the output.
2. Open your browser and navigate to:
```bash
      http://<EC2_PUBLIC_IP>       
```
### Step 6: Map Custom Domain with Route 53

1. In the AWS Management Console, go to Route 53.
2. Create an A record that maps your custom domain to the EC2 instance’s public IP.
3. Wait for the DNS propagation.

### Step 7: Test Your Domain

Visit your custom domain in a browser:
```bash
      http://yourdomain.com       
```
You should see the hosted website.
## Directory Structure
```bash
      simple-website-deployment/  
├── main.tf              # Terraform configuration file  
├── index.html           # HTML file for the website  
├── README.md            # Documentation for the project
```
### What We Learned
1. Using Terraform for Infrastructure as Code (IaC).
2. Hosting a simple website on AWS EC2.
3. Mapping a custom domain to an EC2 instance with Route 53.

### Future Enhancements
1. Automate SSL/TLS certificate integration for HTTPS.
2. Use a Load Balancer to handle multiple instances.
3. Automate deployment pipelines with CI/CD tools like Jenkins or GitHub Actions.








