# terraform communicator/ssh test environment

This repository is an environment to test if the provisioner can connect to the terraform communicator/ssh via HTTP PROXY.

## dependencies
- terraform
- docker
- docker-compose

## How-To
1. `docker-compose build`
2. `docker-compose up -d`
3. `terraform init`
4. `terraform apply -auto-approve`

## Result Example

```
$ ~/ghq/github.com/htamakos/terraform/terraform apply -auto-approve
null_resource.remote_exec_via_ssh_over_http_proxy_with_auth_through_bastion: Refreshing state... [id=8719430125056995160]
null_resource.remote_exec_via_ssh: Refreshing state... [id=1156678337337142727]
null_resource.remote_exec_via_ssh_over_http_proxy: Refreshing state... [id=2456805027942864311]
null_resource.remote_exec_via_ssh_over_http_proxy_through_bastion: Refreshing state... [id=2488039607822794741]
null_resource.remote_exec_via_ssh_over_http_proxy_with_auth: Refreshing state... [id=4092500202928979050]

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
-/+ destroy and then create replacement

Terraform will perform the following actions:

  # null_resource.remote_exec_via_ssh must be replaced
-/+ resource "null_resource" "remote_exec_via_ssh" {
      ~ id       = "1156678337337142727" -> (known after apply)
      ~ triggers = {
          - "build_number" = "2021-12-30T03:16:55Z"
        } -> (known after apply) # forces replacement
    }

  # null_resource.remote_exec_via_ssh_over_http_proxy must be replaced
-/+ resource "null_resource" "remote_exec_via_ssh_over_http_proxy" {
      ~ id       = "2456805027942864311" -> (known after apply)
      ~ triggers = {
          - "build_number" = "2021-12-30T03:16:56Z"
        } -> (known after apply) # forces replacement
    }

  # null_resource.remote_exec_via_ssh_over_http_proxy_through_bastion must be replaced
-/+ resource "null_resource" "remote_exec_via_ssh_over_http_proxy_through_bastion" {
      ~ id       = "2488039607822794741" -> (known after apply)
      ~ triggers = {
          - "build_number" = "2021-12-30T03:16:56Z"
        } -> (known after apply) # forces replacement
    }

  # null_resource.remote_exec_via_ssh_over_http_proxy_with_auth must be replaced
-/+ resource "null_resource" "remote_exec_via_ssh_over_http_proxy_with_auth" {
      ~ id       = "4092500202928979050" -> (known after apply)
      ~ triggers = {
          - "build_number" = "2021-12-30T03:16:56Z"
        } -> (known after apply) # forces replacement
    }

  # null_resource.remote_exec_via_ssh_over_http_proxy_with_auth_through_bastion must be replaced
-/+ resource "null_resource" "remote_exec_via_ssh_over_http_proxy_with_auth_through_bastion" {
      ~ id       = "8719430125056995160" -> (known after apply)
      ~ triggers = {
          - "build_number" = "2021-12-30T03:16:56Z"
        } -> (known after apply) # forces replacement
    }
Plan: 5 to add, 0 to change, 5 to destroy.
null_resource.remote_exec_via_ssh_over_http_proxy_with_auth: Destroying... [id=4834391650718277819]
null_resource.remote_exec_via_ssh: Destroying... [id=4727489635703643485]
null_resource.remote_exec_via_ssh_over_http_proxy_through_bastion: Destroying... [id=154493005404606358]
null_resource.remote_exec_via_ssh_over_http_proxy_with_auth_through_bastion: Destroying... [id=5750345333101675414]
null_resource.remote_exec_via_ssh_over_http_proxy: Destroying... [id=2912693274146434159]
null_resource.remote_exec_via_ssh: Destruction complete after 0s
null_resource.remote_exec_via_ssh_over_http_proxy_with_auth: Destruction complete after 0s
null_resource.remote_exec_via_ssh_over_http_proxy_with_auth_through_bastion: Destruction complete after 0s
null_resource.remote_exec_via_ssh_over_http_proxy_through_bastion: Destruction complete after 0s
null_resource.remote_exec_via_ssh_over_http_proxy: Destruction complete after 0s
null_resource.remote_exec_via_ssh: Creating...
null_resource.remote_exec_via_ssh_over_http_proxy_with_auth: Creating...
null_resource.remote_exec_via_ssh_over_http_proxy_with_auth_through_bastion: Creating...
null_resource.remote_exec_via_ssh: Provisioning with 'remote-exec'...
null_resource.remote_exec_via_ssh_over_http_proxy_with_auth: Provisioning with 'remote-exec'...
null_resource.remote_exec_via_ssh_over_http_proxy_with_auth (remote-exec): Connecting to remote host via SSH...
null_resource.remote_exec_via_ssh_over_http_proxy_with_auth (remote-exec):   Host: bas
null_resource.remote_exec_via_ssh_over_http_proxy_with_auth (remote-exec):   User: root
null_resource.remote_exec_via_ssh_over_http_proxy_with_auth (remote-exec):   Password: true
null_resource.remote_exec_via_ssh_over_http_proxy_with_auth (remote-exec):   Private key: false
null_resource.remote_exec_via_ssh_over_http_proxy_with_auth (remote-exec):   Certificate: false
null_resource.remote_exec_via_ssh_over_http_proxy_with_auth (remote-exec):   SSH Agent: false
null_resource.remote_exec_via_ssh_over_http_proxy_with_auth (remote-exec):   Checking Host Key: false
null_resource.remote_exec_via_ssh_over_http_proxy_with_auth (remote-exec):   Target Platform: unix
null_resource.remote_exec_via_ssh_over_http_proxy_with_auth (remote-exec): Using configured proxy host...
null_resource.remote_exec_via_ssh_over_http_proxy_with_auth (remote-exec):   ProxyHost: localhost
null_resource.remote_exec_via_ssh_over_http_proxy_with_auth (remote-exec):   ProxyPort: 23129
null_resource.remote_exec_via_ssh_over_http_proxy_with_auth (remote-exec):   ProxyUserName: root
null_resource.remote_exec_via_ssh_over_http_proxy_with_auth (remote-exec):   ProxyUserPassword: true
null_resource.remote_exec_via_ssh (remote-exec): Connecting to remote host via SSH...
null_resource.remote_exec_via_ssh (remote-exec):   Host: 0.0.0.0
null_resource.remote_exec_via_ssh (remote-exec):   User: root
null_resource.remote_exec_via_ssh (remote-exec):   Password: true
null_resource.remote_exec_via_ssh (remote-exec):   Private key: false
null_resource.remote_exec_via_ssh (remote-exec):   Certificate: false
null_resource.remote_exec_via_ssh (remote-exec):   SSH Agent: false
null_resource.remote_exec_via_ssh (remote-exec):   Checking Host Key: false
null_resource.remote_exec_via_ssh (remote-exec):   Target Platform: unix
null_resource.remote_exec_via_ssh_over_http_proxy: Creating...
null_resource.remote_exec_via_ssh_over_http_proxy_through_bastion: Creating...
null_resource.remote_exec_via_ssh_over_http_proxy_with_auth_through_bastion: Provisioning with 'remote-exec'...
null_resource.remote_exec_via_ssh_over_http_proxy_with_auth_through_bastion (remote-exec): Connecting to remote host via SSH...
null_resource.remote_exec_via_ssh_over_http_proxy_with_auth_through_bastion (remote-exec):   Host: app
null_resource.remote_exec_via_ssh_over_http_proxy_with_auth_through_bastion (remote-exec):   User: root
null_resource.remote_exec_via_ssh_over_http_proxy_with_auth_through_bastion (remote-exec):   Password: true
null_resource.remote_exec_via_ssh_over_http_proxy_with_auth_through_bastion (remote-exec):   Private key: false
null_resource.remote_exec_via_ssh_over_http_proxy_with_auth_through_bastion (remote-exec):   Certificate: false
null_resource.remote_exec_via_ssh_over_http_proxy_with_auth_through_bastion (remote-exec):   SSH Agent: false
null_resource.remote_exec_via_ssh_over_http_proxy_with_auth_through_bastion (remote-exec):   Checking Host Key: false
null_resource.remote_exec_via_ssh_over_http_proxy_with_auth_through_bastion (remote-exec):   Target Platform: unix
null_resource.remote_exec_via_ssh_over_http_proxy_with_auth_through_bastion (remote-exec): Using configured bastion host...
null_resource.remote_exec_via_ssh_over_http_proxy_with_auth_through_bastion (remote-exec):   Host: bas
null_resource.remote_exec_via_ssh_over_http_proxy_with_auth_through_bastion (remote-exec):   User: root
null_resource.remote_exec_via_ssh_over_http_proxy_with_auth_through_bastion (remote-exec):   Password: true
null_resource.remote_exec_via_ssh_over_http_proxy_with_auth_through_bastion (remote-exec):   Private key: false
null_resource.remote_exec_via_ssh_over_http_proxy_with_auth_through_bastion (remote-exec):   Certificate: false
null_resource.remote_exec_via_ssh_over_http_proxy_with_auth_through_bastion (remote-exec):   SSH Agent: false
null_resource.remote_exec_via_ssh_over_http_proxy_with_auth_through_bastion (remote-exec):   Checking Host Key: false
null_resource.remote_exec_via_ssh_over_http_proxy_with_auth_through_bastion (remote-exec): Using configured proxy host...
null_resource.remote_exec_via_ssh_over_http_proxy_with_auth_through_bastion (remote-exec):   ProxyHost: localhost
null_resource.remote_exec_via_ssh_over_http_proxy_with_auth_through_bastion (remote-exec):   ProxyPort: 23129
null_resource.remote_exec_via_ssh_over_http_proxy_with_auth_through_bastion (remote-exec):   ProxyUserName: root
null_resource.remote_exec_via_ssh_over_http_proxy_with_auth_through_bastion (remote-exec):   ProxyUserPassword: true
null_resource.remote_exec_via_ssh_over_http_proxy: Provisioning with 'remote-exec'...
null_resource.remote_exec_via_ssh_over_http_proxy_through_bastion: Provisioning with 'remote-exec'...
null_resource.remote_exec_via_ssh_over_http_proxy (remote-exec): Connecting to remote host via SSH...
null_resource.remote_exec_via_ssh_over_http_proxy (remote-exec):   Host: bas
null_resource.remote_exec_via_ssh_over_http_proxy (remote-exec):   User: root
null_resource.remote_exec_via_ssh_over_http_proxy (remote-exec):   Password: true
null_resource.remote_exec_via_ssh_over_http_proxy (remote-exec):   Private key: false
null_resource.remote_exec_via_ssh_over_http_proxy (remote-exec):   Certificate: false
null_resource.remote_exec_via_ssh_over_http_proxy (remote-exec):   SSH Agent: false
null_resource.remote_exec_via_ssh_over_http_proxy (remote-exec):   Checking Host Key: false
null_resource.remote_exec_via_ssh_over_http_proxy (remote-exec):   Target Platform: unix
null_resource.remote_exec_via_ssh_over_http_proxy_through_bastion (remote-exec): Connecting to remote host via SSH...
null_resource.remote_exec_via_ssh_over_http_proxy_through_bastion (remote-exec):   Host: app
null_resource.remote_exec_via_ssh_over_http_proxy_through_bastion (remote-exec):   User: root
null_resource.remote_exec_via_ssh_over_http_proxy_through_bastion (remote-exec):   Password: true
null_resource.remote_exec_via_ssh_over_http_proxy_through_bastion (remote-exec):   Private key: false
null_resource.remote_exec_via_ssh_over_http_proxy_through_bastion (remote-exec):   Certificate: false
null_resource.remote_exec_via_ssh_over_http_proxy_through_bastion (remote-exec):   SSH Agent: false
null_resource.remote_exec_via_ssh_over_http_proxy_through_bastion (remote-exec):   Checking Host Key: false
null_resource.remote_exec_via_ssh_over_http_proxy_through_bastion (remote-exec):   Target Platform: unix
null_resource.remote_exec_via_ssh_over_http_proxy (remote-exec): Using configured proxy host...
null_resource.remote_exec_via_ssh_over_http_proxy (remote-exec):   ProxyHost: localhost
null_resource.remote_exec_via_ssh_over_http_proxy (remote-exec):   ProxyPort: 23128
null_resource.remote_exec_via_ssh_over_http_proxy (remote-exec):   ProxyUserName:
null_resource.remote_exec_via_ssh_over_http_proxy (remote-exec):   ProxyUserPassword: false
null_resource.remote_exec_via_ssh_over_http_proxy_through_bastion (remote-exec): Using configured bastion host...
null_resource.remote_exec_via_ssh_over_http_proxy_through_bastion (remote-exec):   Host: bas
null_resource.remote_exec_via_ssh_over_http_proxy_through_bastion (remote-exec):   User: root
null_resource.remote_exec_via_ssh_over_http_proxy_through_bastion (remote-exec):   Password: true
null_resource.remote_exec_via_ssh_over_http_proxy_through_bastion (remote-exec):   Private key: false
null_resource.remote_exec_via_ssh_over_http_proxy_through_bastion (remote-exec):   Certificate: false
null_resource.remote_exec_via_ssh_over_http_proxy_through_bastion (remote-exec):   SSH Agent: false
null_resource.remote_exec_via_ssh_over_http_proxy_through_bastion (remote-exec):   Checking Host Key: false
null_resource.remote_exec_via_ssh_over_http_proxy_through_bastion (remote-exec): Using configured proxy host...
null_resource.remote_exec_via_ssh_over_http_proxy_through_bastion (remote-exec):   ProxyHost: localhost
null_resource.remote_exec_via_ssh_over_http_proxy_through_bastion (remote-exec):   ProxyPort: 23128
null_resource.remote_exec_via_ssh_over_http_proxy_through_bastion (remote-exec):   ProxyUserName:
null_resource.remote_exec_via_ssh_over_http_proxy_through_bastion (remote-exec):   ProxyUserPassword: false
null_resource.remote_exec_via_ssh (remote-exec): Connected!
null_resource.remote_exec_via_ssh_over_http_proxy (remote-exec): Connected!
null_resource.remote_exec_via_ssh_over_http_proxy_with_auth (remote-exec): Connected!
null_resource.remote_exec_via_ssh_over_http_proxy_through_bastion (remote-exec): Connected!
null_resource.remote_exec_via_ssh_over_http_proxy_with_auth_through_bastion (remote-exec): Connected!
null_resource.remote_exec_via_ssh (remote-exec): Success: remote_exec_via_ssh
null_resource.remote_exec_via_ssh_over_http_proxy_with_auth (remote-exec): Success: remote_exec_via_ssh_over_http_proxy_with_auth
null_resource.remote_exec_via_ssh_over_http_proxy (remote-exec): Success: remote_exec_via_ssh_over_http_proxy
null_resource.remote_exec_via_ssh_over_http_proxy_through_bastion (remote-exec): Success: remote_exec_via_ssh_over_http_proxy_through_bastio
n
null_resource.remote_exec_via_ssh: Creation complete after 0s [id=1156678337337142727]
null_resource.remote_exec_via_ssh_over_http_proxy_with_auth_through_bastion (remote-exec): Success: remote_exec_via_ssh_over_http_proxy_with
_auth_through_bastion
null_resource.remote_exec_via_ssh_over_http_proxy_with_auth: Creation complete after 0s [id=4092500202928979050]
null_resource.remote_exec_via_ssh_over_http_proxy_through_bastion: Creation complete after 0s [id=2488039607822794741]
null_resource.remote_exec_via_ssh_over_http_proxy: Creation complete after 0s [id=2456805027942864311]
null_resource.remote_exec_via_ssh_over_http_proxy_with_auth_through_bastion: Creation complete after 0s [id=8719430125056995160]
```
