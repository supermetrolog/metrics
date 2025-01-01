push:
	git add .
	git commit --amend --no-edit
	git push -f

pull:
	git pull --rebase


dashboard-up:
	docker-compose -f docker-compose.dashboard.yml up -d
dashboard-down:
	docker-compose -f docker-compose.dashboard.yml down --remove-orphans
dashboard-restart: dashboard-down dashboard-up



metrics-up:
	docker-compose -f docker-compose.metrics.yml up -d
metrics-down:
	docker-compose -f docker-compose.metrics.yml down --remove-orphans
metrics-restart: metrics-down metrics-up



exporter-up:
	docker-compose -f docker-compose.exporter.yml up -d
exporter-down:
	docker-compose -f docker-compose.exporter.yml down --remove-orphans
exporter-restart: exporter-down exporter-up

