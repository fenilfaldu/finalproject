#!/usr/bin/env bash

# Kill any servers that may be running in the background
sudo pkill -f runserver

# Change directory to the Django project root
cd /home/ubuntu/finalproject

# Install the AWS CLI
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install

# Verify AWS CLI installation and configure if needed
aws --version
# aws configure  # Uncomment this line if you need to configure AWS CLI

# Set AWS credentials and region (consider using secure methods)
export AWS_ACCESS_KEY_ID=AKIA6GBMGUFLH3MCLCPI
export AWS_SECRET_ACCESS_KEY=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
export AWS_DEFAULT_REGION=ap-northeast-3

# Log in to Amazon ECR registry
aws ecr get-login-password --region ap-northeast-3 | docker login --username AWS --password-stdin 975050285398.dkr.ecr.ap-northeast-3.amazonaws.com
# Pull the Docker image from Amazon ECR (if needed)
sudo docker pull 975050285398.dkr.ecr.ap-northeast-3.amazonaws.com/finalproject:latest
# Build and start the Docker Compose services
sudo docker-compose up -d

# Docker Done!