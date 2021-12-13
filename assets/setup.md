# Setups

## Local development Environment

```
terraform validate && terraform fmt -check && terraform plan
terraform apply after-stop -auto-approve
```

Stop all service

```
docker stop postgres && docker stop pgadmin4
```

- `terraform destroy` removes all docker images, generally not required

Access rdbms shell

```
psql --host=localhost --port=5432 --username=postgres
```

## Django on Cloud Run

> stateful service should be added to docker container externally

- [ ] connect to stateful Database Service
  - cloud SQL Proxy, runs locally connects using SSL
- [ ] How to supply SECRET_kEY and other secrets to container image
  - [ ] grant cloud run service account to access secrets
  - [ ] A new principal as accessor should be added on secret
- [ ] connect to storage buckets? static files
- [ ] Emails servers/service

- Use buster image (350MB) has more built in dependencies and more prebuilt wheels than slim
- [12 Factor](https://www.12factor.net/)

## Deployment Issues

How to pass secrets as environment to docker image to run?

`--set-env-vars ENDPOINTS_SERVICE_NAME=ivy-gcr-7jgvnh5pma-uc.a.run.app OTHER=secret`

How to read the secrets inside running container?

- use sed to escape dollar signs
- sed regex how to
- ask make to run a bash command
