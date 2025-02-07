# core

variable "region" {
    description = "The AWS region to create resources in."
    default = "ca-central-1"
}


# Networking

variable "public_subnet_1_cidr" {
  description = "CIDR Block for Public Subnet 1"
  default     = "10.0.1.0/24"
}
variable "public_subnet_2_cidr" {
  description = "CIDR Block for Public Subnet 2"
  default     = "10.0.2.0/24"
}
variable "private_subnet_1_cidr" {
  description = "CIDR Block for Private Subnet 1"
  default     = "10.0.3.0/24"
}
variable "private_subnet_2_cidr" {
  description = "CIDR Block for Private Subnet 2"
  default     = "10.0.4.0/24"
}
variable "availability_zones" {
  description = "Availability zones"
  type        = list(string)
  default     = ["ca-central-1a", "ca-central-1b"]
}


# Load balancer

variable "health_check_path" {
  description = "Health check path for the default target group"
  default = "/ping/"
}


# ECS

variable "ecs_cluster_name" {
    description = "Name of the ECS cluster"
    default     = "production"
}

variable "docker_image_url_django" {
    description = "Docker image to run in the ECS cluster"
    default     = "<AWS_ACCOUNT_ID>.dkr.ecr.ca-central-1.amazonaws.com/django-app:latest"
}

variable "app_count" {
    description = "Number of Docker containers to run"
    default     = 2
}

variable "fargate_cpu" {
    description = "Amount of CPU for Fargate task. E.g., '256' (.25 vCPU)"
    default     = "256"
}

variable "fargate_memory" {
    description = "Amount of memory for Fargate task. E.g., '512' (0.5GB)"
    default     = "512"
}

variable "allowed_hosts" {
  description = "Domain name for allowed hosts"
  default     = "Your domain name"
}


# Logs

variable "log_retention_in_days" {
    default = 30
}


# ECS service auto scaling

variable "autoscale_min" {
  description = "Minimum instance size for autoscale (number of tasks)"
  default     = "1"
}

variable "autoscale_max" {
  description = "Maximum instance size for autoscale (number of tasks)"
  default     = "10"
}

variable "autoscale_desired" {
  description = "Desired number of tasks to run initially"
  default     = "4"
}

# RDS

variable "rds_db_name" {
  description = "RDS database name"
  default     = "foo"
}

variable "rds_username" {
  description = "RDS database username"
  default     = "dbuser"
}

variable "rds_password" {
  description = "RDS database password"
}

variable "rds_instance_class" {
  description = "RDS instance type"
  default     = "db.t3.micro"
}


# Domain

variable "certificate_arn" {
  description = "AWS Certificate Manager ARN for validated domain"
  default     = "Add your ARN here"
}


# Nginx

variable "docker_image_url_nginx" {
  description = "Docker image to run in the ECS cluster"
  default     = "<AWS_ACCOUNT_ID>.dkr.ecr.ca-central-1.amazonaws.com/nginx:latest"
}