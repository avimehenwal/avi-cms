# Setups

## Local development Environment

```
terraform validate && terraform fmt && terraform plan
terraform apply -auto-approve
```

Stop all service

```
docker stop postgres && docker stop pgadmin4
```

- `terraform destroy` removes all docker images, generally not required
