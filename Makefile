ENV_FILE=.env

build:
	docker compose --env-file $(ENV_FILE) build

up:
	docker compose --env-file $(ENV_FILE) up -d

down:
	docker compose --env-file $(ENV_FILE) down

mongodb:
	docker compose exec -it mydevfolio-db mongosh