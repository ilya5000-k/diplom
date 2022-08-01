
output "zone-subnet-a" {
  value = yandex_vpc_subnet.subnet-a.zone
}

output "zone-subnet-b" {
  value = yandex_vpc_subnet.subnet-b.zone
}

output "tf_workspace" {
  value = "${terraform.workspace}"
}

output "external_ip_address_nginx-01_yandex_cloud" {
  value = yandex_compute_instance.nginx.network_interface.0.nat_ip_address
}


output "internal_ip_address_nginx-01_yandex_cloud" {
  value = yandex_compute_instance.nginx.network_interface.0.ip_address
}

output "internal_ip_address_DB_01_yandex_cloud" {
  value = yandex_compute_instance.db_sql_01.network_interface.0.ip_address 
}

output "internal_ip_address_DB_02_yandex_cloud" {
  value = yandex_compute_instance.db_sql_02.network_interface.0.ip_address 
}

output "internal_ip_address_wordpress_cloud" {
  value = yandex_compute_instance.app.network_interface.0.ip_address
}

output "external_ip_address_Gitlab_ce_yandex_cloud" {
  value = yandex_compute_instance.gitlab_ce.network_interface.0.ip_address
}

output "external_ip_address_Gitlab_Runner_yandex_cloud" {
  value = yandex_compute_instance.runner.network_interface.0.ip_address
}

output "external_ip_address_Monitoring_yandex_cloud" {
  value = yandex_compute_instance.monitoring.network_interface.0.ip_address
}
