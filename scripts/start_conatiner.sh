#!/bin/bash
set -e

#pull the Docker image from docker hub
docker push jack1503/simple-python-flaskapp:tagname

#run the docker image as a container
docker run -d - 5000:5000 jack1503/simple-python-flaskapp:tagname