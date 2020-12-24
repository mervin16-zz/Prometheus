/*** 
**** Digital Ocean Settings
***/
variable "do_settings_token" {
  type        = string
  description = "The Digital Ocean API token"
}

/*** 
**** Droplet Specs 
***/
variable "dev_droplet_name" {
  type        = string
  description = "The droplet's name."
}

variable "dev_droplet_location" {
  type        = string
  description = "The droplet's region configuration"
}

variable "dev_droplet_size" {
  type        = string
  description = "The droplet cpu, ram and size"
}

variable "dev_droplet_image" {
  type        = string
  description = "The image of the droplet"
}


/*** 
**** Droplet Connection
***/
variable "dev_droplet_connection_location" {
  type        = string
  description = "The file location of the ssh key"
}


/*** 
**** Droplet Setup
***/
variable "dev_droplet_setup_comms" {
  type        = list(string)
  description = "The list of commands to execute on droplet's startup"
}
