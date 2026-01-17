push:
	git add .
	git commit --amend --no-edit
	git push -f

pull:
	git pull --rebase

up:
	docker-compose up -d

down:
	docker-compose down --remove-orphans

restart:
	make down
	make up

up\:grafana:
	docker-compose up -d grafana
stop\:grafana:
	docker-compose stop grafana
restart\:grafana:
	make stop:grafana
	make up:grafana

up\:prom:
	docker-compose up -d prometheus
stop\:prom:
	docker-compose stop prometheus
restart\:prom:
	make stop:prom
	make up:prom

up\:exporter:
	docker-compose up -d nodeexporter
stop\:exporter:
	docker-compose stop nodeexporter
restart\:exporter:
	make stop:exporter
	make up:exporter