# Use an official Python base image
FROM python:3.10-slim

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# Set working directory
WORKDIR /app

# Install dependencies directly
RUN pip install --upgrade pip && \
    pip install flask flask-cors requests 

# Copy everything to the container
COPY . .

# Expose port 80
EXPOSE 80

# Run the Flask app
CMD ["python", "app.py"]
