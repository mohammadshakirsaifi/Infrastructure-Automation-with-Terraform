# Infrastructure Automation with Terraform

This repository automates the lifecycle management of EC2 instances, integrates EKS workloads, and deploys observability stacks using Terraform.
## 🖼️ Architecture Diagram
<img width="1536" height="1024" alt="jpeg" src="https://github.com/user-attachments/assets/9bf7f51b-e403-47a3-82dc-d8d2e2abac22" />

## 📁 Repository Structure

```
infra-automation/
├── ec2/
│   ├── main.tf
│   ├── variables.tf
│   ├── outputs.tf
│   └── lifecycle.tf
├── eks/
│   ├── main.tf
│   ├── variables.tf
│   ├── outputs.tf
│   └── workloads/
│       └── deployment.yaml
├── observability/
│   ├── prometheus/
│   ├── grafana/
│   └── loki/
├── modules/
│   ├── ec2-instance/
│   └── eks-cluster/
├── terraform.tfvars
└── README.md
```

## 🚀 EC2 Lifecycle Management
- Uses Terraform to provision EC2 instances.
- Supports lifecycle hooks and auto-scaling.
- Modular design for reusability.

## ☸️ EKS Cluster & Workloads
- Provisions EKS cluster using Terraform AWS modules.
- Deploys sample workloads using Kubernetes manifests.

## 📊 Observability Stack
- Prometheus for metrics collection.
- Grafana for visualization.
- Loki for log aggregation.
- Deployed via Helm charts.

## 🔄 CI/CD Integration
- GitHub Actions for Terraform automation.
- Supports `terraform plan` and `apply` workflows.

## 🛠️ Prerequisites
- Terraform >= 1.0
- AWS CLI configured
- kubectl & helm installed

## 📦 Usage
```bash
terraform init
terraform plan
terraform apply
```
## Summary
<img width="765" height="405" alt="image" src="https://github.com/user-attachments/assets/0c0f33eb-9638-4fa4-a455-119cea2e4b2b" />

##  Step-by-Step Instructions
1. EC2 Lifecycle Management with Terraform
a. Define EC2 Module
In modules/ec2-instance/main.tf:
b. Use the Module in ec2/main.tf
c. Add Lifecycle Hooks (Optional)
Use lifecycle.tf to define auto-scaling or termination protection if needed.

2. EKS Cluster Setup and Workload Deployment
### a. Create EKS Cluster Module
In modules/eks-cluster/main.tf:
### b. Deploy Workloads
In eks/workloads/deployment.yaml:
Use kubectl apply -f eks/workloads/deployment.yaml after cluster provisioning.

3. Observability Stack Integration
### a. Prometheus & Grafana via Helm
<img width="410" height="91" alt="image" src="https://github.com/user-attachments/assets/b0d6b337-1ab6-4e99-a567-3dc93d82a6af" />

### b. Loki for Logs
In observability/loki/main.tf:



## 📬 Contributions
Feel free to fork and submit pull requests.

## 📄 License
MIT License
