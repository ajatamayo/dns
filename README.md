# DNS Records Configuration with Terraform and Namecheap

This repository contains Terraform configuration files for managing DNS records on Namecheap.

## Prerequisites

- Terraform installed on your machine.
- Namecheap account with API access.

## Secrets

- All values are in Namecheap.
- Make a `secrets.tfvars` file.
- Use `secrets.tfvars.example` as basis.

## Mode

- Do **NOT** use `OVERWRITE` as it will delete all other records.
- Use `MERGE`.

## Documentation

Refer to [Namecheap's Guide](https://registry.terraform.io/providers/namecheap/namecheap/latest/docs/guides/namecheap_domain_records_guide).

## Applying the configuration

Run the following commands to apply the configuration:

```
terraform init
terraform plan
terraform apply -var-file=secrets.tfvars
```

This will make the changes go live on Namecheap.
