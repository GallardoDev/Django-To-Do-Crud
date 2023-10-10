#!/usr/bin/env bash
# exit on error
set -o errexit

# poetry install
find . -regex '.*requierements.txt$'
pip install -r requierements.txt

python manage.py collectstatic --no-input
python manage.py migrate