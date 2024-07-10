# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . .

# Install zoneinfo dependency for Python 3.9 and above (if needed)
RUN apt-get update && apt-get install -y tzdata

# Make port 3030 available to the world outside this container
EXPOSE 3030

# Define environment variable
ENV TZ=America/Toronto

# Run app.py when the container launches
CMD ["python", "app.py"]