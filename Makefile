SHELL=/bin/bash

.PHONY: up down composer php

PHP_RUN := docker-compose run --rm php-cli

up:
	docker-compose up -d --remove-orphans

down:
	docker-compose down --remove-orphans -v

php:
	@${PHP_RUN} $(ARGS)
