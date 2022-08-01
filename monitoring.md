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


