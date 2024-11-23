#!/bin/bash

set -e  # Exit on error

echo "BUILD START"

# Install dependencies
python3 -m pip install --upgrade pip
python3 -m pip install -r requirements.txt

# Collect static files
export DJANGO_SETTINGS_MODULE=GradBond.settings  # Adjust to your settings module
python3 manage.py collectstatic --noinput --clear

echo "BUILD END"
