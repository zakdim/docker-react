#!/bin/bash

# docker run <IMAGE_ID>
# docker run -it 0effbea0c6c7 npm run test 

# Run web service first, for example:
# docker-compose up
# Than attach to the running container and run tests
# docker exec -it <CONTAINER_ID> npm run test
# docker exec -it 694fbd54b37f npm run test

# 7-93: A Touch More Travis Setup
# docker run zakdim/docker-react npm run test -- --coverage

# 7-92: Fix for Failing Travis Builds
# docker run -e CI=true zakdim/docker-react npm run test
docker run -e CI=true zakdim/docker-react npm run test -- --coverage

