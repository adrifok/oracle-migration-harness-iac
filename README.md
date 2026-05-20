# oracle-migration-harness-iac

Terraform IaC to provision the AWS infrastructure that runs the Oracle AI Developer Hub data migration harness. It migrates a RAG corpus from MongoDB to Oracle AI Database 26ai using Docker and OCI Gen AI.

What gets deployed

VPC with a public subnet, an EC2 t4g.medium (ARM64, Ubuntu 22.04, 30GB gp3), and a security group locked to your IP for SSH, FastAPI on 8000, and Vite on 5173. cloud-init bootstraps Docker, Python 3.11, and Node.js 20 on first boot.

Modules

- `networking-aws` — VPC, subnet, IGW, route table, security group
- `compute-aws` — EC2 instance, SSH key pair, cloud-init

Usage

cp terraform.tfvars.example terraform.tfvars
terraform init
terraform plan
terraform apply

Variables

- `project_name` — resource name prefix (default: `migration-harness`)
- `aws_region` — target region (default: `us-east-1`)
- `ssh_public_key` — your SSH public key content
- `my_public_ip_cidr` — your IP in CIDR notation, e.g. `1.2.3.4/32`
