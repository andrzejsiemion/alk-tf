variable "ssh_public_key_filepath" {
  description = "Filepath for ssh public key"
  type        = string

  default = "ubuntu.pub"
}

variable "instance_count" {
  description = "amount of instances"
  type        = string

  default = "1"
}