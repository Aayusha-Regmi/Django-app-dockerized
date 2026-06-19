#!/bin/sh

echo "Waiting for Database...."


while ! python -c "import os,socket; socket.create_connection((os.getenv('DB_HOST'),3306),2)"; do
	sleep 2
done

echo "Database is Ready............."

python manage.py migrate --no-input

exec gunicorn notesapp.wsgi:application --bind 0.0.0.0:8000
