# TF s3 bucket demo

The s3 bucket demo is a simple Terraform configuration allowing creation of an individual s3 bucket.  Nothing more, nothing less.

The configuration can be run multiple times in succession since each bucket is named with a random 5 digit string.

## Pre-requisites
- AWS account
- Terraform



## Usage
Firstly, Download or clone the project

Furthermore, You must have an AWS account and provide your **AWS Access Key ID** and **AWS Secret Access Key** in some manner.  From the command line, this can be done with the AWS CLI:

```bash
aws configure
```
Navigate into the local project directory and run: 
```bash
terraform init
```

Determine the changes that would occur with:
```bash
terraform plan
```
To apply the actions, run:
```bash
terraform apply
```

... and confirm the action

## Cleaning up
Run the following
```bash
terraform destroy
```

... and confirm the action
