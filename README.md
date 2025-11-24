# Kubernetes Nginx Load Balancing Cluster

Проект демонстрирует развертывание Kubernetes кластера с балансировкой нагрузки на базе Nginx, включая тестирование под высокой нагрузкой и автоматическое масштабирование.

## Архитектура

- **Kubernetes Cluster** (Minikube/Docker Desktop)
- **Nginx** как веб-сервер приложений
- **Horizontal Pod Autoscaler** для автоматического масштабирования
- **Metrics Server** для мониторинга метрик
- **Load Testing** с использованием hey/ab
