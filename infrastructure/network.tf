# Network
resource "yandex_vpc_network" "default" {
  name = "net"
}

resource "yandex_vpc_subnet" "subnet-a" {
  name = "subnet-a"
  zone           = "ru-central1-a"
  network_id     = "${yandex_vpc_network.default.id}"
  v4_cidr_blocks = ["192.168.101.0/24"]
  route_table_id = "${yandex_vpc_route_table.route-table-a.id}"
}

resource "yandex_vpc_subnet" "subnet-b" {
  name = "subnet-b"
  zone           = "ru-central1-b"
  network_id     = "${yandex_vpc_network.default.id}"
  v4_cidr_blocks = ["192.168.1.0/24"]
  route_table_id = "${yandex_vpc_route_table.route-table-a.id}"
}

resource "yandex_vpc_route_table" "route-table-a" {
  name       = "route-table-a"
  network_id = "${yandex_vpc_network.default.id}"
  static_route {
    destination_prefix = "0.0.0.0/0"
    next_hop_address   = "192.168.101.10"
  }
}
