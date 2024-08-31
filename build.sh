#!/usr/bin/env bash
set -o errexit  # Exit on first command that fails

# Install Python dependencies
pip install -r ./backend/requirements.txt

# Navigate to the React app directory
cd ./Frontend

# Install Node.js dependencies
npm install

# Build React app
npm run build

# Navigate back to the Django directory
cd ..

# Collect static files
python manage.py collectstatic --no-input
