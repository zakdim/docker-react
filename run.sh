#!/bin/bash

# docker run -it -p 3000:3000 <IMAGE_ID>
# docker run -it -p 3000:3000 3d9c877ab71c

# Define volumes
# docker run -it -p 3000:3000 \
#   -v /app/node_modules -v $(pwd):/app 7ed54755f5c3

# 6-76: With docker-compose
# docker-compose up

# 6-81: Docker Compose for Running Tests
docker-compose up --build