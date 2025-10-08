# terraform-demo2d
---
#Working with State Management Commands
---
## Note: navigate to “.tf” files. Open “terraform.tfvars” and update the “s3_bucket_name” argument.

# 🌩️ AWS + Terraform S3 Setup Guide

This guide helps you configure AWS credentials and deploy an **S3 bucket** using **Terraform**.
It’s designed for quick setup, testing, and teardown.

---

## 🪄 Step 1: Configure AWS CLI

First, configure your AWS CLI credentials so Terraform can authenticate with AWS.

Run the following command in your terminal:

```bash
aws configure
```

You will be prompted to enter the following details:

```
AWS Access Key ID: <your-access-key-id>
AWS Secret Access Key: <your-secret-access-key>
Default region name: eu-west-1
Default output format: json
```

✅ **Tip:**
If you don’t have AWS CLI installed, download it from
👉 [https://aws.amazon.com/cli/](https://aws.amazon.com/cli/)

---

## 🧱 Step 2: Prepare Terraform Configuration Files

Navigate to your Terraform project directory.
Inside, you should have .tf files.


> ⚠️ Bucket names must be globally unique across all AWS accounts.

---

## 🚀 Step 3: Initialize and Validate Terraform

Now initialize Terraform and validate your configuration.

```bash
terraform init
terraform validate
```

If validation passes successfully, you’re ready to plan and apply.

---

## 🧩 Step 4: Plan and Apply Terraform Changes

Generate a plan to preview what Terraform will create:

```bash
terraform plan -out "s3.tfplan"
```

If everything looks good, apply the plan to create your resources:

```bash
terraform apply "s3.tfplan"
```

Terraform will prompt for confirmation — type **`yes`** to proceed.

---

## 🧹 Step 5: Destroy Terraform Resources

When you’re done testing or want to clean up your environment, run:

```bash
terraform destroy
```

This will remove all resources that were created by Terraform.

---

## 📋 Common Commands Reference

| Command              | Description                               |
| -------------------- | ----------------------------------------- |
| `terraform init`     | Initializes Terraform working directory   |
| `terraform validate` | Validates the configuration syntax        |
| `terraform plan`     | Creates an execution plan                 |
| `terraform apply`    | Applies the execution plan                |

terraform output
terraform show
terraform show s3.tfplan
terraform state list
terraform state show aws_ebs_volume.myblockvolume
| `terraform destroy`  | Destroys Terraform-managed infrastructure |

---

## 🧠 Notes

* Always run `terraform plan` before `terraform apply` to preview changes.
* Keep your `aws_access_key_id` and `aws_secret_access_key` **confidential**.
* For version control, **never commit** your `.tfstate` or `.tfplan` files to GitHub.

---

## 🛡️ .gitignore Recommendation

Add a `.gitignore` file to protect sensitive and temporary files:

```
# Terraform
*.tfstate
*.tfstate.backup
*.tfplan
.terraform/
.terraform.lock.hcl

# AWS credentials
*.pem
*.key
```

---

## ✅ Summary

You have now successfully:

1. Configured AWS CLI
2. Created an S3 bucket using Terraform
3. Validated, applied, and destroyed the infrastructure safely

🎯 You’re ready to manage AWS resources using Terraform with confidence!

---

**Author:** *Indra Kumar*
**Created for:** AWS + Terraform hands-on setup
**Last Updated:** October 2025

