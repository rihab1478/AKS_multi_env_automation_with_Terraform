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
create.yml             # CI/CD pipeline to deploy clusters
destroy.yml     # CI/CD pipeline to destroy clusters
