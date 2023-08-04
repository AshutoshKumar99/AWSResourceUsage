# AWS Resource Usage Tracker

## Overview

This shell script is designed to report the AWS resource usage for the current AWS account. It retrieves information about the following AWS resources:

- S3 buckets
- EC2 instances
- Lambda functions
- IAM users

The script generates separate output files for each resource, containing relevant details.

## Author

- **Author:** Ashutosh
- **Date:** 8 Aug 2023
- **Version:** v1

## Prerequisites

Before running the script, ensure you have the following requirements met:

1. AWS CLI is installed and configured with valid credentials for the AWS account you want to track.

## Execution

To execute the script, run the following command:

```bash
./aws_resource_tracker.sh
