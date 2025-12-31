#!/bin/bash
source .env
BURL=${BCKSTG_CONFIGS_URL}

cd backstage
# Add auth and techdocs plugins
# OAuth
yarn --cwd packages/backend add @backstage/plugin-auth-backend-module-github-provider
# TechDocs back & front
yarn --cwd packages/app add @backstage/plugin-techdocs
yarn --cwd packages/backend add @backstage/plugin-techdocs-backend
# Templates
yarn --cwd packages/backend add @backstage/plugin-scaffolder-backend-module-github

# Overwrite configurations
curl --create-dirs --user $AUTH_GITHUB_CLIENT_ID:$AUTH_GITHUB_CLIENT_SECRET $BURL/catalog/entities/groups.yaml -o catalog/entities/groups.yaml
curl --create-dirs --user $AUTH_GITHUB_CLIENT_ID:$AUTH_GITHUB_CLIENT_SECRET $BURL/catalog/entities/users.yaml -o catalog/entities/users.yaml
curl --create-dirs --user $AUTH_GITHUB_CLIENT_ID:$AUTH_GITHUB_CLIENT_SECRET $BURL/app-config.local.yaml -o app-config.local.yaml
curl --create-dirs --user $AUTH_GITHUB_CLIENT_ID:$AUTH_GITHUB_CLIENT_SECRET $BURL/packages/backend/src/index.ts -o packages/backend/src/index.ts
curl --create-dirs --user $AUTH_GITHUB_CLIENT_ID:$AUTH_GITHUB_CLIENT_SECRET $BURL/packages/app/src/App.tsx -o packages/app/src/App.tsx

# Clean vars with secrets
export BCKSTG_CONFIGS_URL=''
export BURL=''
export AUTH_GITHUB_CLIENT_ID=''
export AUTH_GITHUB_CLIENT_SECRET=''
