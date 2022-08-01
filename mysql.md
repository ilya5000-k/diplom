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
