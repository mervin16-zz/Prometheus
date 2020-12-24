terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "1.22.2"
    }
  }
}

provider "digitalocean" {
  token = var.do_settings_token
}

data "digitalocean_ssh_key" "th3pl4gu3-ssh" {
  name = "th3pl4gu3-ssh"
}
