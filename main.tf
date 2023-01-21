resource "google_compute_instance" "alkdemo" {
  count        = var.instance_count
  name         = "alk-demo-${count.index}"
  machine_type = "n1-standard-1"
  zone         = "us-west1-a"

  tags = ["alk", "y2023"]

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-2204-lts"
    }
  }

  network_interface {

    network = "default"
    access_config {
      // for public ip
    }
  }

  metadata = {
    sshKeys = "asiemion:${file(var.ssh_public_key_filepath)}"
  }
  allow_stopping_for_update = true
}

