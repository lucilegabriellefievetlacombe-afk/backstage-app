# Build Alpine Backstage Image 
#
# Prerequisites
# You have an url named $SRC/backstage/ with your configured files :
#    app-config.local.yaml
#    packages/backend/src/index.ts
#    packages/app/src/App.tsx
#    catalog/entities/
# The build create the volume $SRC/backstage.
# At run time,the $SRC/backstage directory must be shared. 
# This backstages directories are under $SRC host directory, $SRC is passed in argument at build time.
# AUTH_GITHUB_CLIENT_ID and AUTH_GITHUB_CLIENT_ID are passed at build or run time.

FROM node:iron-alpine3.23
ARG AUTH_GITHUB_CLIENT_ID=AUTH_GITHUB_CLIENT_ID
ARG AUTH_GITHUB_CLIENT_SECRET=AUTH_GITHUB_CLIENT_SECRET
ARG SRC=https://github.com/lucilegabriellefievetlacombe-afk/backstage-app/tree/main/backstage
ARG VOLUME=/home/lucile/backstage-app/backstage
EXPOSE 3000
EXPOSE 7007

WORKDIR /app

# Update npm, intall corpack
RUN npm install -g npm@latest
RUN npm install -g corepack
# Set yarn version 4.4.1
RUN yarn set version 4.4.1

RUN apk update && apk add --no-cache vim curl wget python3 py3-pip make g++ bash github-cli

# Adding mkdocs techdocs
ENV VIRTUAL_ENV=/opt/venv
RUN python3 -m venv $VIRTUAL_ENV
ENV PATH="$VIRTUAL_ENV/bin:$PATH"

RUN pip3 install mkdocs-techdocs-core

# If backstage has not been yet installed or mounted, install it with npx
RUN npx @backstage/create-app@latest

# IN BACKSTAGE 
# Get in backstage and install authentication and techdocs with yarn
WORKDIR /app/backstage
RUN yarn --cwd packages/backend add @backstage/plugin-auth-backend-module-github-provider
; yarn --cwd packages/app add @backstage/plugin-techdocs; yarn --cwd packages/backend add @backstage/plugin-techdocs-backend

# TODO Check if it is overriding default installed backstage 
RUN curl --create-dirs --output --anyauth --user AUTH_GITHUB_CLIENT:AUTH_GITHUB_CLIENT_SECRET . $SRC
#COPY $SRC/backstage/*.yaml .
#COPY $SRC/backstage/packages/backend/src/index.ts packages/backend/src/index.ts
#COPY $SRC/backstage/packages/app/src/App.tsx packages/app/src/App.tsx
#RUN mkdir -p catalog/entities/
#COPY $SRC/backstage/catalog/entities/*.yaml catalog/entities/

# TODO Check if the future mounted volume is usable with this image
VOLUME $VOL
RUN cp -R * $VOL

# TODO check entry point is working 
ENTRYPOINT ["/usr/local/bin/yarn", "yarn start"]
CMD -- --config `pwd`/app-config.local.yaml

LABEL backstage
