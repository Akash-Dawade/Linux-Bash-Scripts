#!/bin/bash

echo "List of AWS EC2 instances"
aws ec2 describe-instances
echo ""
echo "List of IAM Users"
aws iam list-users
