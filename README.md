# recipe-app-api

rest api course

- python backend with rest api
- docker
- postgreSQL
- django
- test-driven-development
- github actions -> auto perform tasks like lint and run unit tests

## docker compose commands

### start/stop dev server

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

user2@example.com
Awesome!123

### make migrations

    docker-compose run --rm app sh -c "python manage.py makemigrations"

### startapp user

    docker-compose run --rm app sh -c "python manage.py startapp user"

creates folder structure for user app

### startapp recipe

    docker-compose run --rm app sh -c "python manage.py startapp recipe"

creates folder structure for recipe app

### collectstatistics

    docker-compose run --rm app sh -c "python manage.py collectstatistic"

### gather static files

    docker-compose run --rm app sh -c "python manage.py collectstatic"

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

## usage

server is running on port 8000
http://localhost:8000/

### authenticate

http://localhost:8000/api/docs/

use /api/user/token/ with one of the above usernames, and passwords
(in swagger click try it out)

click authenticate on top of the page and paste the returned token like

Token <token>
e.g.
Token 09a76cefb5fd09c4a66a8624d99b71d43a96ec28

### post recipe

/api/recipe/recipes/


{
  "title": "Recipe 1",
  "time_minutes": 100,
  "price": "2.50",
  "link": "example.com",
  "tags": [
    {
      "name": "tag1"
    },
    {
      "name": "tag2"
    }
  ],
  "description": "my sample description"
}