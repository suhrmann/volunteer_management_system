#!/bin/sh

echo "### Create migrations for the database"
python manage.py makemigrations auth volunteer administrator organization event job shift registration

echo "### Apply migrations to database"
python manage.py migrate --noinput --traceback --settings=vms.settings

echo "### Populate the database for django-cities-light"
python manage.py cities_light

echo "All Setup. Ready to begin. 🚀"
