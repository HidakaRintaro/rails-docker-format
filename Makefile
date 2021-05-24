PROJECT=yYyYy

start:
	docker compose build --no-cache; \
	docker compose up -d; \
	docker exec -it ${PROJECT}_rails bash

restart:
	docker compose down; \
	docker compose build --no-cache; \
	docker compose up -d; \
	docker exec -it ${PROJECT}_rails bash

build:
	docker compose build --no-cache

up:
	docker compose up -d

down:
	docker compose down

exec:
	docker exec -it ${PROJECT}_rails bash

setup:
	find . -type f -name "Dockerfile" | xargs sed -i '' -e 's/xXxXx/${n}/g'; \
	find . -type f -name "docker-compose.yaml" | xargs sed -i '' -e 's/xXxXx/${n}/g'; \
	find . -type f -name "Makefile" | xargs sed -i '' -e 's/yYyYy/${n}/g'; \
	mkdir db
