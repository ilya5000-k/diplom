terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }
  required_version = ">= 0.75"



  backend "s3" {
    endpoint   = "storage.yandexcloud.net"
    bucket     = "my--bucket1"
    region     = "ru-central1"
    key        = "terraform/terraform.tfstate"
    skip_region_validation      = true
    skip_credentials_validation = true

}


}


provider "yandex" {
  service_account_key_file = "key.json"
  cloud_id  = "${var.yandex_cloud_id}"
  folder_id = "${var.yandex_folder_id}"
 
}
