#!/bin/sh

set -e

python manage.py wait_for_db

# collect static files and make them available for direct nginx serve
python manage.py collectstatic --no-input
python manage.py migrate

# runs app/wsgi.py
uwsgi --socket :9000 --workers 4 --master --enable-threads --module app.wsgi