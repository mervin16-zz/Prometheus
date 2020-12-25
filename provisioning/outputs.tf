output "droplet_ip" {
  value = "The droplet's public IP is ${digitalocean_droplet.Dev_Droplet.ipv4_address}"
}
