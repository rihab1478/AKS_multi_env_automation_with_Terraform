# 🚀 Multi-Environment AKS Deployment with Terraform  

![Terraform](https://img.shields.io/badge/Terraform-1.5.7-blue) ![Azure](https://img.shields.io/badge/Azure-Cloud-0089D6) ![DevOps](https://img.shields.io/badge/Azure_DevOps-Pipeline-orange)  

This project automates the provisioning of **Azure Kubernetes Service (AKS) clusters** for multiple environments (`dev` and `staging`) using **Terraform** and integrates deployment with **Azure DevOps Pipelines**.  

---

## 📁 Project Structure

```text
infra/
├── modules/
│   └── aks/                    
│       ├── main.tf
│       ├── variables.tf
│       └── outputs.tf
├── environments/
│   ├── dev/
│   │   ├── main.tf
│   │   └── backend.tf
│   └── staging/
│       ├── main.tf
│       └── backend.tf
scripts/
└── create_storage_accounts.sh  # Create Azure storage accounts for Terraform state
README.md
create.yml            
destroy.yml    

🔧 Features

Automated AKS cluster creation for Dev and Staging environments.

Branch-aware Azure DevOps pipelines:

dev branch → deploys Dev environment.

main branch → deploys Staging environment.

Fully automated destroy pipeline to safely remove clusters.

Reusable Terraform module following best practices.

Backend Terraform state stored securely in Azure Storage Accounts.

⚙️ Prerequisites

Azure account with a subscription.

Azure CLI installed and logged in.

Terraform >= 1.13.4.
