variable "ssh_public_key_filepath" {
  description = "Filepath for ssh public key"
  type        = string

  default = "ubuntu.pub"
}

variable "instance_count" {
  description = "amount of instances"
  type        = string

  default = "2"
}

variable "gcp_zone" {
  description = "zona gcp"
  type = string

  default = "us-west1-a" 
}

variable "gcp_machine_type" {
  description = "maszyna gcp - rozmiar"
  type = string

  default = "n1-standard-1" 
}