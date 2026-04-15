# AWS Infrastructure Automation and EKS Deployment using Terraform

## Project Overview

This project automates the provisioning of AWS cloud infrastructure using Terraform and deploys a sample application on an Amazon EKS cluster.

The setup includes:

* Custom VPC creation
* Public subnets in multiple Availability Zones
* Internet Gateway and Route Table
* IAM roles and policies
* Amazon EKS cluster
* EKS managed worker node group
* Nginx pod deployment
* LoadBalancer service exposure

---

## Technologies Used

* Terraform
* AWS (VPC, EKS, EC2, IAM)
* Kubernetes
* kubectl
* AWS CLI

---

## Project Architecture

1. Terraform creates AWS infrastructure:

   * VPC
   * Subnets
   * Internet Gateway
   * Route Table
   * IAM Roles
   * EKS Cluster
   * Worker Nodes

2. AWS CLI connects local system to AWS account.

3. kubectl connects to EKS cluster.

4. Nginx pod is deployed in Kubernetes.

5. LoadBalancer service exposes the application publicly.

---

## Steps to Run the Project

### 1. Clone Repository

```bash
git clone <your-repo-url>
cd terraform-eks-project
```

### 2. Configure AWS Credentials

```bash
aws configure
```

### 3. Initialize Terraform

```bash
terraform init
```

### 4. Validate Configuration

```bash
terraform validate
```

### 5. Preview Infrastructure

```bash
terraform plan
```

### 6. Apply Infrastructure

```bash
terraform apply
```

### 7. Configure kubectl for EKS

```bash
aws eks update-kubeconfig --region ap-south-1 --name my-eks-cluster
```

### 8. Verify Nodes

```bash
kubectl get nodes
```

### 9. Deploy Application

```bash
kubectl run nginx-pod --image=nginx
```

### 10. Expose Service

```bash
kubectl expose pod nginx-pod --type=LoadBalancer --port=80
```

### 11. Access Application

Use:

```bash
kubectl get svc
```

Copy the EXTERNAL-IP / LoadBalancer URL and open it in the browser.

---

## Project Outcome

* Successfully automated AWS infrastructure using Terraform.
* Deployed and managed Kubernetes workloads on Amazon EKS.
* Exposed application using AWS LoadBalancer.

---

## Key Learnings

* Infrastructure as Code (IaC)
* AWS networking and IAM setup
* EKS cluster provisioning
* Kubernetes pod and service deployment
* Cloud automation best practices

---

## Cleanup

To avoid AWS charges, destroy resources after use:

```bash
terraform destroy
```
