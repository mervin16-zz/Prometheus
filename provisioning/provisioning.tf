/*** 
**** VPC 
***/
data "digitalocean_vpc" "th3pl4gu3_vpc" {
  name = "nyc3-th3pl4gu3-vpc"
}

/*** 
**** Droplet 
***/
resource "digitalocean_droplet" "Dev_Droplet" {
  image              = var.dev_droplet_image
  name               = var.dev_droplet_name
  region             = var.dev_droplet_location
  size               = var.dev_droplet_size
  vpc_uuid           = data.digitalocean_vpc.th3pl4gu3_vpc.id
  private_networking = true
  monitoring         = true

  ssh_keys = [
    data.digitalocean_ssh_key.th3pl4gu3-ssh.id
  ]

  # Connects to Droplet
  connection {
    host        = self.ipv4_address
    user        = "root"
    type        = "ssh"
    private_key = file(var.dev_droplet_connection_location)
    timeout     = "2m"
  }

  # Execute a list of commands
  provisioner "remote-exec" {
    inline = var.dev_droplet_setup_comms
  }

}
