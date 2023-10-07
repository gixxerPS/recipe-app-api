# recipe-app-api
rest api course

- python backend with rest api
- docker
- postgreSQL
- django
- test-driven-development
- github actions -> auto perform tasks like lint and run unit tests

## run dev server

    docker-compose up

## docker compose commands

### build

    docker-compose build

### run start / stop

    docker-compose up
    docker-compose down

### run tests

    docker-compose run --rm app sh -c "python manage.py test"

### collectstatistics

    docker-compose run --rm app sh -c "python manage.py collectstatistic"

### run lint

    docker-compose run --rm app sh -c "flake8"

## init django project structure

    docker-compose run --rm app sh -c "django-admin startproject app ."

## linting

    docker-compose run --rm app sh -c "flake8"

## notes

flake8 -> Linting