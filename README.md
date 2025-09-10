# Infrastructure Automation with Terraform

This repository automates the lifecycle management of EC2 instances, integrates EKS workloads, and deploys observability stacks using Terraform.

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

## 📬 Contributions
Feel free to fork and submit pull requests.

## 📄 License
MIT License
