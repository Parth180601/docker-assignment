# Use an official Python image as the base
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install Flask
RUN pip install --no-cache-dir flask

# Expose the port that Flask runs on
EXPOSE 5000

# Define the command to run the application
CMD ["python", "app.py"]
