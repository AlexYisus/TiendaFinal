#!/usr/bin/env bash
set -o errexit  # Exit on first command that fails

# Install Python dependencies
pip install -r ./backend/requirements.txt

# Install Node.js dependencies
npm install # Reemplaza "path/to/your/react-app" con la ruta real a tu aplicación React

# Build React app
npm run build -prefix ./Frontend # Reemplaza "path/to/your/react-app" con la ruta real a tu aplicación React

# Collect static files
python manage.py collectstatic --no-input
