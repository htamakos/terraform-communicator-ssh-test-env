variable "ssh_user" {
  default = "root"
}

variable "ssh_passsword" {
  default = "welcome1"
}

variable "ssh_host" {
  default = "bas"
}

variable "ssh_port" {
  default = 11022
}

variable "app_host" {
  default = "app"
}

variable "ssh_private_key" {
  default = ""
}

locals {
  ssh_private_key = var.ssh_private_key == "" ? file("~/.ssh/id_rsa") : var.ssh_private_key
}

variable "proxy_host" {
  default = "localhost"
}

variable "proxy_port" {
  default = "23128"
}

variable "proxy_with_auth_port" {
  default = "23129"
}

variable "proxy_user_name" {
  default = "root"
}

variable "proxy_user_password" {
  default = "welcome1"
}

resource "null_resource" "remote_exec_via_ssh" {
  triggers = {
    build_number = "${timestamp()}"
  }

  provisioner "remote-exec" {
    connection {
      agent    = false
      host     = "0.0.0.0"
      port     = var.ssh_port
      user     = var.ssh_user
      password = var.ssh_passsword
    }

    inline = [
      "echo Success: remote_exec_via_ssh"
    ]
  }
}

resource "null_resource" "remote_exec_via_ssh_over_http_proxy" {
  triggers = {
    build_number = "${timestamp()}"
  }

  provisioner "remote-exec" {
    connection {
      agent      = false
      host       = var.ssh_host
      user       = var.ssh_user
      password   = var.ssh_passsword
      proxy_host = var.proxy_host
      proxy_port = var.proxy_port
    }

    inline = [
      "echo Success: remote_exec_via_ssh_over_http_proxy"
    ]
  }
}

resource "null_resource" "remote_exec_via_ssh_over_http_proxy_with_auth" {
  triggers = {
    build_number = "${timestamp()}"
  }

  provisioner "remote-exec" {
    connection {
      agent               = false
      host                = var.ssh_host
      user                = var.ssh_user
      password            = var.ssh_passsword
      proxy_host          = var.proxy_host
      proxy_port          = var.proxy_with_auth_port
      proxy_user_name     = var.proxy_user_name
      proxy_user_password = var.proxy_user_password
    }

    inline = [
      "echo Success: remote_exec_via_ssh_over_http_proxy_with_auth"
    ]
  }
}


resource "null_resource" "remote_exec_via_ssh_over_http_proxy_through_bastion" {
  triggers = {
    build_number = "${timestamp()}"
  }

  provisioner "remote-exec" {
    connection {
      agent            = false
      host             = var.app_host
      user             = var.ssh_user
      password         = var.ssh_passsword
      proxy_host       = var.proxy_host
      proxy_port       = var.proxy_port
      bastion_host     = var.ssh_host
      bastion_user     = var.ssh_user
      bastion_password = var.ssh_passsword
    }

    inline = [
      "echo Success: remote_exec_via_ssh_over_http_proxy_through_bastion"
    ]
  }
}

resource "null_resource" "remote_exec_via_ssh_over_http_proxy_with_auth_through_bastion" {
  triggers = {
    build_number = "${timestamp()}"
  }

  provisioner "remote-exec" {
    connection {
      agent               = false
      host                = var.app_host
      user                = var.ssh_user
      password            = var.ssh_passsword
      proxy_host          = var.proxy_host
      proxy_port          = var.proxy_with_auth_port
      proxy_user_name     = var.proxy_user_name
      proxy_user_password = var.proxy_user_password
      bastion_host        = var.ssh_host
      bastion_user        = var.ssh_user
      bastion_password    = var.ssh_passsword
    }

    inline = [
      "echo Success: remote_exec_via_ssh_over_http_proxy_with_auth_through_bastion"
    ]
  }
}
