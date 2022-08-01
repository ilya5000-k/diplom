# Создать my_SQL ноды

resource "yandex_compute_instance" "db_sql_01" {
  name                      = "db-sql-01"
  platform_id               = "${var.platf_id}"
  zone                      = "ru-central1-a"
  hostname                  = "db01.${var.my_domain}"
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
      name        = "root-nginx-db01"
      type        = "network-nvme"
      size        = "20"
    }
  }

  network_interface {
    subnet_id = "${yandex_vpc_subnet.subnet-a.id}"
    ip_address = "192.168.101.11"
  }


metadata = {
    ssh-keys = "ilya:${file("~/.ssh/id_rsa.pub")}", "serial-port-enable": "1"
    user-data = "${file("meta.txt")}"
}
 description = "db01"


lifecycle {
    create_before_destroy = true

  }
}

resource "yandex_compute_instance" "db_sql_02" {
  name                      = "db-sql-02"
  zone                      = "ru-central1-a"
  hostname                  = "db02.${var.my_domain}"
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
      name        = "root-nginx-db02"
      type        = "network-nvme"
      size        = "20"
    }
  }

  network_interface {
    subnet_id = "${yandex_vpc_subnet.subnet-a.id}"
    ip_address = "192.168.101.12"

  }

 
metadata = {
    ssh-keys = "ilya:${file("~/.ssh/id_rsa.pub")}", "serial-port-enable": "1"
    user-data = "${file("meta.txt")}"
}
 description = "db02"


lifecycle {
    create_before_destroy = true

  }
}
