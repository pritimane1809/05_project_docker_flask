# Use official Python base image
FROM python:3.10-slim

# Set working directory inside container
WORKDIR /app

# Copy project files
COPY requirements.txt .
COPY app.py .

# Install required packages
RUN pip install --no-cache-dir -r requirements.txt

# Expose application port
EXPOSE 5000

# Run the application
CMD ["python", "app.py"]
