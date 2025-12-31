#!/bin/bash

# Clean previous run container backstage-run image

docker rm bckstg-run
docker image rm alpine-backstage-run:0.0.0

# Build alpine-backstage-run:0.0.0
# use Dockerfile-run file

docker build -f Dockerfile-run -t alpine-backstage-run:0.0.0 .

# Start alpine-backstage-run:0.0.0 image in a bckstg-run docker container

# publish front at port 3000, back at 7007
# mount local directory in /app in the container 
# backstage must have been build previously and +- configured inside this directory
source .env
docker run --name bckstg-run -it -p 3000:3000 -p 7007:7007 -e GITHUB_TOKEN=$GITHUB_TOKEN -e AUTH_GITHUB_CLIENT_ID=$AUTH_GITHUB_CLIENT_ID -e AUTH_GITHUB_CLIENT_SECRET=$AUTH_GITHUB_CLIENT_SECRET -v `pwd`/:/app -w /app/backstage alpine-backstage-run:0.0.0
