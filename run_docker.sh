#!/usr/bin/env bash

# Build image and add a descriptive tag
docker build --tag=mlpredict .

# List docker images
docker image ls

# Run flask app
docker run -p 80:5000 mlpredict