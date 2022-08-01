# Создать wordpress

resource "yandex_compute_instance" "app" {
  name                      = "wordpress"
  platform_id               = "${var.platf_id}"
  zone                      = "ru-central1-a"
  hostname                  = "app.${var.my_domain}"
  allow_stopping_for_update = true

 
  resources {
    core_fraction = "${var.core_f}"
    cores  = 4
    memory = 4
  }

  scheduling_policy {
    preemptible = true
  }

  boot_disk {
    initialize_params {
      image_id    = "${var.centos-7-base}"
      name        = "root-app"
      type        = "network-nvme"
      size        = "20"
    }
  }

  network_interface {
    subnet_id = "${yandex_vpc_subnet.subnet-a.id}"
    # nat = true
    ip_address = "192.168.101.13"
  }


metadata = {
    ssh-keys = "ilya:${file("~/.ssh/id_rsa.pub")}", "serial-port-enable": "1"
    user-data = "${file("meta.txt")}"
}
 description = "wordpress"


lifecycle {
    create_before_destroy = true

  }
}

