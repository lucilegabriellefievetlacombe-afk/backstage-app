#!/bin/bash

if [ -f .env ]; then 
	if [ -d backstage ]; then

		# Build alpine-backstage-conf:0.0.0 image
		docker build -t alpine-backstage-conf:0.0.0 -f Dockerfile-config .

		# Run configuration container
		# must be in the directory where the backstage source directory have been created
		# it must contain .env with auth and url for curl configuration
		# it mounts /app with our current local directory
		docker run --rm -it -v `pwd`:/app -w /app alpine-backstage-conf:0.0.0
	else
		echo 'backstage source and config directory is missing'
	fi
else
	echo '.env with configuration is missing'
fi
