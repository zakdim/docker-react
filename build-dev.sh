#!/bin/bash

# Specify docker file other than Dockerfile with -f option
# 7-93: A Touch More Travis Setup
docker build -t zakdim/docker-react -f Dockerfile.dev .
