# terraform-azure-vnet
Azure VNet terraform module


```bash
terraform init
terraform plan -var-file="variables.tfvars" -out tfplan
terraform apply "tfplan"

terraform destroy -var-file="variables.tfvars"
```