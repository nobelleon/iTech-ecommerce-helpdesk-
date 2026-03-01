# build_files.sh                                             
#!/bin/bash

echo "Building project packages..."
echo "Installing project requirements..."
python -m pip install -r requirements.txt

echo "Collecting static files..."
python manage.py collectstatic --noinput

# create a virtual environment named 'venv' if it doesn't already exist
python3.9 -m venv venv