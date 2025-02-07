# Django ECS Terraform Infrastructure

This project demonstrates deploying a Django application on AWS ECS using Terraform for infrastructure as code. The application uses PostgreSQL RDS for the database and includes automated infrastructure provisioning.

## Architecture Overview

- **Application**: Django web application
- **Container Orchestration**: Amazon ECS (Elastic Container Service)
- **Database**: Amazon RDS PostgreSQL 15.4
- **Load Balancer**: Application Load Balancer
- **File Storage**: EFS for static files
- **SSL/TLS**: AWS Certificate Manager
- **Infrastructure as Code**: Terraform
- **CI/CD**: GitHub Actions

## Infrastructure Components

- VPC with public and private subnets
- ECS Fargate cluster
- RDS PostgreSQL instance
- Application Load Balancer
- EFS File System
- Security Groups
- IAM Roles and Policies
- CloudWatch Log Groups

## Prerequisites

- AWS CLI configured
- Terraform >= 1.0
- Docker
- Python 3.9+
- PostgreSQL 15.4

## Local Development

1. Create virtual environment:
```bash
python -m venv venv
source venv/bin/activate  # Linux/Mac
venv\Scripts\activate     # Windows


# Install dependencies:
pip install -r requirements.txt


# Set up environment variables:
cp .env.example .env
# Update .env with your configurations


# Infrastructure Deployment

# Initialize Terraform:
cd terraform
terraform init


# Review infrastructure plan:
terraform plan


# Apply infrastructure:
terraform apply


# Cleanup
# To destroy the infrastructure:
terraform destroy
```

## Key Features

- Scalability : Auto-scaling ECS tasks

- Security :
  - Private subnets for ECS tasks and RDS
  - SSL/TLS encryption
  - Security groups for access control

- Monitoring : CloudWatch integration

- Database :
PostgreSQL 15.4


## Infrastructure Updates

- Recent improvements from the original tutorial:
  Upgraded PostgreSQL from 13.x to 15.4

- Implemented SSL/TLS with ACM and Route53
  Updated ECS task definitions for better resource utilization


## Notes
- This project is for demonstration purposes

- Different production deployments may require other security configurations

- Costs may be incurred for running AWS resources

- Remember to destroy resources when not in use

- Future Improvements
  - Add WAF for enhanced security
  - Implement auto-scaling policies
  - Add Redis for caching
  - Implement blue-green deployments
  - Others
