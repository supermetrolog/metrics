push:
	git add .
	git commit --amend --no-edit
	git push -f

pull:
	git pull --rebase


dashboard-up:
	docker-compose -f docker-compose.dashboard.yml up -d
dashboard-down:
	docker-compose -f docker-compose.dashboard.yml down

metrics-up:
	docker-compose -f docker-compose.metrics.yml up -d
metrics-down:
	docker-compose -f docker-compose.metrics.yml down

exporter-up:
	docker-compose -f docker-compose.exporter.yml up -d
exporter-down:
	docker-compose -f docker-compose.exporter.yml up -d
