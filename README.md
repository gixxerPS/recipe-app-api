# recipe-app-api

rest api course

- python backend with rest api
- docker
- postgreSQL
- django
- test-driven-development
- github actions -> auto perform tasks like lint and run unit tests

## docker compose commands

## start/stop dev server

    docker-compose up
    docker-compose down

### build

    docker-compose build

### run tests and lint

    docker-compose run --rm app sh -c "python manage.py test && flake8"

### run tests

    docker-compose run --rm app sh -c "python manage.py test"

### run lint

    docker-compose run --rm app sh -c "flake8"

### create superuser

    docker-compose run --rm app sh -c "python manage.py createsuperuser"

admin@example.com
dockeriscool321

user@example.com
test12345678

### collectstatistics

    docker-compose run --rm app sh -c "python manage.py collectstatistic"


## init django project structure

    docker-compose run --rm app sh -c "django-admin startproject app ."

## linting

    docker-compose run --rm app sh -c "flake8"

## notes

flake8 -> Linting

debugging:

https://londonappdeveloper.com/debugging-a-dockerized-django-app-with-vscode/

list docker volumes
    docker volume ls

automated API documentation:
drf-spectacular
