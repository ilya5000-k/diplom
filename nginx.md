# Роль nginx
Используется для развертывания сервера "nginx". 

### Файл /tasks/main.yml
Содержит последовательность задач для развертывания сервера "nginx" в режиме обратного прокси сервера.

### Файл /templates/cert.sh
Используется зля установки системы управления пакетами "snapd" и установки пакета "certbot" для запроса сертификатов "LetsEncrypt".

### Файл /templates/index.html
Тестовая страница для первоначальной настройки веб сервера на "nginx" перед выдачей сертификата.

### Файл /templates/nginx.conf
Конфигурационный файл для первоначальной настройки веб сервера на "nginx" перед выдачей сертификата.

### Файл /templates/nginx_ssl.conf
Конфигурационный файл для настройки веб сервера на "nginx" в выданным сертификата.

### Файл /templates/node_exporter.service
Создает сервис "node_exporter.service".

### Файл /vars/main.yml
Содержит переменные для роли "nginx".
* worker_processes: auto
* worker_connections: 1000
* client_max_body_size: 512M
* worker_limit: 1024
* domain: kor-iv.ru



