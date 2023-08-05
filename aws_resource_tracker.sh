#!/bin/bash
########################
# Author: Ashutosh
# Date: 4 Aug 2023
# version: v1
# This script will report the AWS resource usage
#######################

set -x # It will put your script in debug mode, showing the executed commands as output.

# AWS resources to track
# AWS S3
# AWS EC2
# AWS Lambda
# AWS IAM Users

# Lists S3 buckets, listing all user-owned buckets
echo "Listing S3 buckets"
aws s3 ls > S3resourceTracker # Redirecting output to a file S3resourceTracker

# Lists EC2 instances available in my account, including running, stopped, and terminated instances
echo "Listing EC2 instances"
#aws ec2 describe-instances
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId' > EC2resourceTracker # Redirecting output to a file EC2resourceTracker, it will give any number of instance IDs which are available

# Lists Lambda functions, displaying a list of all functions for the current user
echo "Listing Lambda Functions"
aws lambda list-functions > LambdaResourceTracker # Redirecting output to a file LambdaResourceTracker

# Lists the IAM users in the current account
echo "Listing IAM Users"
aws iam list-users > IAMUserResourceTracker  # Redirecting output to a file IAMUserResourceTracker
