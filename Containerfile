# Use a slim Python image
FROM python:3.9-slim

# Set the working directory to /app
WORKDIR /app

# Copy the requirements file and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the entire project into the container
COPY . .

# Expose port 8000
EXPOSE 8000

# Add an entrypoint to run migrations and start the server
CMD ["sh", "-c", "python manage.py migrate && gunicorn RestaurantCore.wsgi:application --bind 0.0.0.0:8000"]
