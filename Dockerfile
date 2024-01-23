# Use a lightweight Python base image
FROM python:3.8-slim

# Set the working directory
WORKDIR /app

# Copy the Python script into the container
COPY weather.py /app

# Install the required Python library
RUN pip install requests

# Command to run the application
CMD ["python", "./weather.py"]
