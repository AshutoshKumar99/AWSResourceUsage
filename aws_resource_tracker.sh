#!/bin/bash
########################
# Author: Ashutosh
# Date: 4 Aug 2023
# 
# version: v1
#
# This script will report the aws resource usage
#######################

set -x #It will put your script in debug mode, when you run any script it shows which cmd is executing and this is the output of this cmd

# AWS S3
# AWS EC2
# AWS Lambda
# AWS IAM Users


# Lists S3 buckets,Listing all user owned buckets
echo "Listing S3 buckts"
aws s3 ls > S3resurceTracker # redirecting output to a file S3resurceTracker

# Lists EC2 instances available in my account, running, stopped ins, terminated ins
echo "Listing EC2 instances"
#aws ec2 describe-instances
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId' > EC2resourcetracker #redirecting output to a file EC2resourcetracker, it will give any number of ins. id which are available
# Lists Lambda functions, displays a list of all of the functions for the current user
echo "Listing Lambda Functions"
aws lambda list-functions > LambdaResourceTracker # Redirecting output to a file LambdaResourceTracker

# Lists the IAM users in the current account
echo "Listing IAM Users"
aws iam list-users > IAMUSerResourceracker  # Redirecting output to a file IAMUSerResourceracker

