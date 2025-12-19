#!/bin/bash

if [ -d backstage ]; then
	echo 'backstage directory already exists, remove it if you want to recreate it'
else
	docker build -f Dockerfile-build -t alpine-backstage-build:0.0.2 .
	docker run --name alpine-bckstg-src -it -v `pwd`/:/app -w /app alpine-backstage-build:0.0.2 bash
fi
