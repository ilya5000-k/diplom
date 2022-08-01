# Заменить на ID своего облака
# https://console.cloud.yandex.ru/cloud?section=overview
variable "yandex_cloud_id" {
  default = "ХХХХ"
}

# Заменить на Folder своего облака
# https://console.cloud.yandex.ru/cloud?section=overview
variable "yandex_folder_id" {
  default = "ХХХХ"
}

# Заменить на ID своего образа
# ID можно узнать с помощью команды yc compute image list
variable "centos-7-base" {
  default = "fd88d14a6790do254kj7"
}

variable "yc_token" {
   default = ""
}

variable "my_domain" {
  default = "kor-iv.ru"
}

variable "my_static_ip" {
  default = "51.250.69.201"
}

variable "core_f" {
  default = "20"
}

variable "platf_id" {
  default = "standard-v1"
}