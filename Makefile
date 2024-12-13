UID="$(shell id -u)"
GID="$(shell id -g)"

PROJECT_DIR=$(realpath $(dir $(abspath $(lastword $(MAKEFILE_LIST)))))
# Replace all special chars in project name.
# See: https://github.com/docker/compose/issues/2119#issue-109151467
PROJECT_NAME=$(shell echo $(notdir $(PROJECT_DIR)) | tr A-Z a-z | sed 's/[^a-z0-9]//')

COMPOSE_CMD=WEB_ROOT=$(WEB_ROOT) \
	UID=${UID} \
	GID=${GID} \
	PROJECT_DIR=$(PROJECT_DIR) \
	docker compose

up:
	$(COMPOSE_CMD) up -d --renew-anon-volumes --build --remove-orphans

down:
	$(COMPOSE_CMD) down

restart:
	$(COMPOSE_CMD) restart mkdocs

shell:
	$(COMPOSE_CMD) run --rm -it mkdocs /bin/sh

build:
	$(COMPOSE_CMD) run --rm -it mkdocs build

logs:
	$(COMPOSE_CMD) logs -f
