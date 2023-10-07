# recipe-app-api
rest api course

## run dev server

    docker-compose up

## setup docker

    docker-compose run --rm app sh -c "python manage.py collectstatistic"

## init django project structure

    docker-compose run --rm app sh -c "django-admin startproject app ."

## linting

    docker-compose run --rm app sh -c "flake8"

### notes

flake8 -> Linting