# Каталог для плейбуков.
### Содержит:
* Каталог "group_vars" описыват групповые переменные всего плейбука (не используется). 
* Каталог "inventopy" содержит файл "stage.yml" с описанием групп и IP адресов хостов инвраструктуры.
* Каталог "roles" содержит роли для развертвывания инфраструктуры.
* Файл ansible.cfg задает настройки ansible.
* Файл "site.yml"  содеррит список групп хостов и применяемых к ним ролей.


# Роль gitlab
Используется для установки и настройки серверов gitlab и runner.
### Файл /tasks/main.yml
* Содержит последовательность запускаемых задач для установки CI/CD системы с одним сервером gitlab-ce и одним runner.
* Автоматически подключает runner для использования в "shell" ражиме к gitlab-ce.
* Выводит в консоль пароль пользвателя "root" для подключения к gitlab-ce.
### файл /templates/.gitlab-ci.yml
Содержит pipeline для копирования нового кода на сервер "app.kor-iv.ru" при создании коммита с тегом (например V.0.0.1) с помощью сервиса "rsync". 
### файл /templates/node_exporter.service
Используется для создания сервиса node_exporter.
### файл /templates/rsyncd.scrt
Хранит пароль для использования в сервисе "rsync"
### файл /templates/wp-config.php
Хранит настройки для подключения "wordpress" к базе "mysql"


# Роль monitoring
Используется для установки и настройки мониторинга состояниня серверов инфраструктуры. 
### Файл /tasks/main.yml
Содержит последовательность задач для развертывания сервисов "node_exporter", "alertmanager", "grafana".
### Файл /templates/alertmanager.service
Создает сервис "alertmanager".
### Файл /templates/alertmanager.yml
Содержит настройки для отправки оповещений на указанную электронную почту. Для работы требуется заменить все "ХХХХ" своими значениями.
### Файл /templates/dashdoard.yml
Задает каталог для панелей "grafana".
### Файл /templates/datasource.yml
Задает путь к источнику данных "prometheus" для "grafana".
### Файл /templates/grafana.repo
Задает дополнительный репозитарий для установки сервиса "grafana".
### Файл /templates/node_exporter.service
Сездает сервис "node_exporter".
### Файл /templates/node-exporter-full.json
Задает графический вид и выводиые метрики для сервиса "grafana".
### Файл /templates/prometheus.service
Сездает сервис "prometheus.service".
### Файл /templates/prometheus.yml
Задает список серверов инфраструктуры для мониторинга, пути для набора правил оповещения, сервис для оповещения.
### Файл /templates/rules.yml
Задает набор правил для оповещения.


# Роль mysql
Используется для развертывания кластера "mysql". 
### Файл /tasks/main.yml
Содержит последовательность задач для развертывания кластера "mysql" в режиме "Master/Slave".
### Файл /tasks/node_exporter.service
Создает сервис "node_exporter".
### Файл /tasks/server_db01.cnf
Задает идентификатор сервера "db01" и базу данных "wordpress" для репликации. 
### Файл /tasks/server_db02.cnf
Задает идентификатор сервера "db02" и базу данных "wordpress" для репликации. 


# Роль nginx
Используется для развертывания сервера "nginx". 
### Файл /handlers/main.yml
Содержит указание на перезапуск сервиса "nginx" при удачном выполнении установки пакета "nginx" и других.
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


# Роль wordpress
Используется для развертывания сервера "wordpress". 
### Файл /tasks/config
Содержит последовательный набор команд для развертывания сервиса "wordpress"
### Файл /templates/config
Используется для отключения SELINUX.
### Файл /templates/node_exporter.service
Создает сервис "node_exporter.service".
### Файл /templates/remi-php74.repo
Используется для добавления дополнительного репозитария для установки "PHP"
### Файл /templates/rsyncd.conf
Конфигурационный файл сервиса "rsyncd" для синхронизации содержимого сайта "wordpress" при создании тегированного коммита.
### Файл /templates/rsyncd.scrt
Содержит пользователя и пароль для сервиса "rsyncd".
### Файл /templates/wordpress.conf
Конфигурационный файл веб сервера на "apache" для сайта "wordpress".
### Файл /templates/wp-config.php
Конфигурационный файл сервиса "wordpress" с настройками для подключения к базе данных "mysql"

