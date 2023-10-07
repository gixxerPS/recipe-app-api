# recipe-app-api
rest api course

## run dev server

    docker-compose up

## docker compose commands

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