#!/bin/bash

# Create a text file with Private IP Address and Hostname
echo "Private IP: $(hostname -I)" > instance_info.txt
echo "Hostname: $(hostname)" >> instance_info.txt

# Upload the file to S3 bucket
aws s3 cp instance_info.txt s3://<your-bucket-name>/
