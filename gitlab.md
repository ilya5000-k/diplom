# Роль gitlab
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

