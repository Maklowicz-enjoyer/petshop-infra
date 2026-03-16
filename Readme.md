# Azure infrastructure for WebApp

Terraform project that provisions a Linux vm on Azure with networking, network security groups and storage account.

## What's deployed

Ubuntu VM in a VNET with two subnets. Public (SSH/HTTP/HTTPS) access and private postgreSQL accessible from public subnet. SSH is key only.

## CI/CD

PR to main runs fmt -check -> validate -> plan and posts the plan as PR comment. Merge to main triggers terraform apply. Manual terraform-destroy workflow available. Workflows share one concurrency group, eliminating parallel runs. Auth via OIDC.

## State

Remote backend on Azure Blob Storage.