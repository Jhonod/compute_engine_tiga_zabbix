resource "google_compute_instance" "zabbix-server" {
  name         = "zabbix-server"
  machine_type = var.machine_type

  boot_disk {
    initialize_params {
      image  = "${var.image_project}/${var.image_family}"
      size   = 50
    }
  }

  network_interface {
    network = "default"
    access_config {}
  }

  metadata_startup_script = file("${path.module}/scripts/install_zabbix_server.sh")
}

resource "google_compute_instance" "zabbix-proxy" {
  name         = "zabbix-proxy"
  machine_type = var.machine_type

  boot_disk {
    initialize_params {
      image  = "${var.image_project}/${var.image_family}"
      size   = 50
    }
  }

  network_interface {
    network = "default"
    access_config {}
  }

  metadata_startup_script = file("${path.module}/scripts/install_zabbix_proxy.sh")
}

resource "google_compute_instance" "zabbix-db" {
  name         = "zabbix-db"
  machine_type = var.machine_type

  boot_disk {
    initialize_params {
      image  = "${var.image_project}/${var.image_family}"
      size   = 50
    }
  }

  network_interface {
    network = "default"
    access_config {}
  }

  metadata_startup_script = file("${path.module}/scripts/install_zabbix_db.sh")
}
