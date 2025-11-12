#!/bin/bash
set -e

# Pull the Docker image from Docker Hub
docker pull jack1503/simple-python-flaskapp:latest

# Stop any existing container
docker stop simple-python-flaskapp || true
docker rm simple-python-flaskapp || true

# Run the new container
docker run -d -p 5000:5000 --name simple-python-flaskapp jack1503/simple-python-flaskapp:latest
