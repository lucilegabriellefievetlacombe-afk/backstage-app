# Learn Platform Engineering with Backstage

*Using Kubernetes, ArgoCD, Docker, GitOps, Helm, GitHub Actions & CI/CD to build IDPs*

* see python-app for prerequisites

*To get a personalized course, create or/and get your ids of dockerhub and github; create a branch with my_course__%YourDockerHubLogin%__%your_login_in_github%.
Replace your-own-github-account with your account name on github.
Replace YourDockerHubLogin with your account in dockerhub.
wait for your branch pipeline.*

## Glossary

**IDP**
: **I**nternal **D**eveloper **P**latform

**Backstage**
: CNF open-source **Platform Engineering framework** developed by **Spotify**, and integrating it with modern **DevOps tools** to build a fully functional **Internal Developer Platform**(IDP)

**Backstage Software Catalog**
: **Centralized system** that keeps track of ownership and metadata **for all the software in your ecosystem** (services, websites, libraries, data pipelines, etc). The catalog is built around the concept of metadata YAML files stored together with the code, which are then harvested and visualized in Backstage.

**Backstage TechDocs**
: Spotify’s homegrown docs-like-code solution built directly into Backstage. Engineers write their documentation in **Markdown** files which live together with their **code** - and with little configuration get a nice-looking doc site in Backstage.

**Backstage Software Templates**
: **Tool** that can help you **create Components** inside Backstage. By default, it has the ability to **load skeletons of code**, template in some **variables**, and then **publish** the template to some locations like GitHub or GitLab.

<details> <summary>Glossary details</summary>

**ARC**
: Actions Runner Controller is a Kubernetes operator that orchestrates and scales self-hosted runners for GitHub Actions.

**ArgoCD**
: Argo CD is a **declarative, GitOps continuous delivery tool for Kubernetes**.

**Backstage**
: CNF open-source **Platform Engineering framework** developed by **Spotify**, and integrating it with modern **DevOps tools** to build a fully functional **Internal Developer Platform**(IDP)

**Backstage Auth & Identity**
: The authentication system in Backstage serves two distinct purposes: **sign-in** and **identification** of **users**, as well as delegating access to **third-party resources**. It is possible to configure Backstage to have any number of authentication providers, but only one of these will typically be used for sign-in, with the rest being used to provide access to external resources. Built-in Athentication providers : Auth0, Atlassian, Azurz, BitBucket, Cloudflare, GitHub, GitLab, Google, Google IAP, Okta, OAuth2, OneLogine, OpenShift, VMware Cloud

**Backstage Configuration**
: Backstage ships with a flexible configuration system that provides a simple way to configure Backstage apps and plugins for both local development and production deployments. Configuration is stored in YAML files where the defaults are app-config.yaml and app-config.local.yaml for local overrides and app-config.<BACKSTAGE_ENV>.yaml for BACKSTAGE_ENV environment variable.

**Backstage Framework CLI**
: **build system and tooling**, delivered primarily through the @backstage/cli package. When creating an app using @backstage/create-app, you receive a project that's already prepared with a typical setup and package scripts for executing the most common commands. *Under the hood the CLI uses **Webpack** for bundling, **Rollup** for building packages, **Jest** for testing, and **eslint** for linting*. It also includes tooling for working within Backstage apps, for example for keeping the app up to date and verifying static configuration. For a more in-depth look into the tooling, see the build system page, and for a list of commands, see the commands page.

**Backstage Framework Backend System**
: Provides a flexible foundation for building and extending Backstage backends. It uses a modular architecture where you can create and customize plugins, modules, and service implementations.

**Backstage Framework Frontend System**
: Provides high-level building blocks upon which this new system is built.

**Backstage Framework User Interface (UI)**
: built-in support for both light and dark themes, making it easy to get started with a professional look and feel. But many teams want to go further—tailoring the interface to reflect their organization’s unique brand, identity, and experience.

**Backstage Integration**
: Integrations allow Backstage to **read or publish data** using **external providers** such as *GitHub, GitLab, Gitea, Bitbucket, LDAP, or cloud providers*.

**Backstage Kubernetes**
: Tool that's designed around the **needs of service owners**, not cluster admins. Now developers can easily **check the health of their services** no matter how or where those services are deployed — whether it's on a local host for testing or in production on dozens of clusters around the world.

**Backstage Notifications**
: System that provides a way for plugins and external services to send notifications to Backstage users. These notifications are displayed in the dedicated page of the Backstage frontend UI or by frontend plugins per specific scenarios. Additionally, notifications can be sent to external channels (like email) via "processors" implemented within plugins.

**Backstage Permissions**
: Backstage can also authorize specific data, APIs, or interface actions - meaning that Backstage has the ability to enforce rules about what type of access is allowed for a given user of a system.

**Backstage Plugins**
: Backstage orchestrates a cohesive single-page application by seamlessly integrating various plugins.

**Backstage Software Catalog**
: **Centralized system** that keeps track of ownership and metadata **for all the software in your ecosystem** (services, websites, libraries, data pipelines, etc). The catalog is built around the concept of metadata YAML files stored together with the code, which are then harvested and visualized in Backstage.

**Backstage Resolver**
: Function that is responsible for creating this **user identity mapping**. Signing in a user into Backstage requires a mapping of the user identity *from* the **third-party auth provider** to a Backstage user identity.

**Backstage Search**
: Backstage Search lets you find the right information you are looking for in the Backstage ecosystem.

**Backstage TechDocs**
: Spotify’s homegrown docs-like-code solution built directly into Backstage. Engineers write their documentation in **Markdown** files which live together with their **code** - and with little configuration get a nice-looking doc site in Backstage.

**Backstage Software Templates**
: **Tool** that can help you **create Components** inside Backstage. By default, it has the ability to **load skeletons of code**, template in some **variables**, and then **publish** the template to some locations like GitHub or GitLab.

**CD**
: **C**ontinuous **D**elivery||**D**eployment, CD refers to the practice of continuous delivery and/or continuous deployment software. Both are about automating further stages of the pipeline.

   > * **Continuous delivery** automates the release of validated code to a repository following the automation of builds and unit and integration testing in CI.
   > * **Continuous deployment** is an extension of continuous delivery, and can refer to automating the release of a developer’s changes from the repository to production, where it is usable by customers. It can concern development and testing envronnements.
   > * A **multi-env-branches gitflow** pipeline can use continuous deployment for developpement feature or fix branches, for QA integration branch and PPD future release branch and then use either continuous delivery or deployment for production.
   > * **CD features&fix DEV > CD integration QA > CD version-X.X.X PPD > CD PROD**

**CI**
: **C**ontinuous **I**ntegration, CI always refers to continuous integration, an automation process for developers that facilitates more frequent merging of code changes back to a shared branch, or “trunk.” As these updates are made, automated testing steps are triggered to ensure the reliability of merged code changes.

**CRDs**
: Custom Resource Definitions, CRDs are a powerful feature in Kubernetes that lets you extend its native API, enabling you to create your own resource types.

**DevOps**
: DevOps is a set of practices, tools, and a cultural philosophy that integrates and automates the work of software development (Dev) and IT operations (Ops) to improve and shorten the systems development life cycle. It emphasizes team empowerment, cross-team communication, collaboration, and technology automation.

**Docker**
: Docker is a platform designed to help developers build, share, and run container applications. We handle the tedious setup, so you can focus on the code.

**Docker File**
: A Dockerfile is a text document that contains all the commands a user could call on the command line to assemble an image.

**Docker Containers**
: A Docker container is a lightweight, standalone, and executable unit of software that encapsulates an application along with all its dependencies, such as libraries, runtime, system tools, and configurations.

**Flask API**
: Flask API is primarily built using the Flask framework, a lightweight and flexible **micro-framework for Python**. Flask itself was created by Armin Ronacher as part of the Pallets Projects.

**IaC**
: **I**nfrastructure **a**s **C**ode, is the practice of keeping all infrastructure configuration stored as code. 

**IDP**
: **I**nternal **D**eveloper **P**latform

**Ingress Controller**
: Component in Kubernetes that manages external access to services within a cluster, typically through HTTP and HTTPS. It is responsible for fulfilling the Ingress resource, which defines rules for routing traffic to different services based on the request's host and path. Common ingress controllers include NGINX and Traefik, and they often work with load balancers to handle incoming traffic effectively.

**GitHub**
: GitHub is a web-based platform that hosts Git repositories, providing developers with tools for version control and collaboration. It combines Git, a powerful version control system, with features that facilitate collaboration and project management.

**GitOps**
: GitOps is an operational framework that takes DevOps best practices used for application development such as version control, collaboration, compliance, and CI/CD, and applies them to infrastructure automation.

**Helm**
: Helm is a **package manager for Kubernetes** that simplifies the deployment and management of applications within Kubernetes clusters. It bundles Kubernetes resources into a single Helm chart.

**Helm Chart**
: Reusable package which includes all necessary code and resources needed to deploy an application.

**kubectl**
: **Command line tool** for communicating with a **Kubernetes cluster's control plane**, using the Kubernetes API.

**Kubernetes**
: Open-source container orchestration platform that automates the deployment, scaling, and management of containerized applications. Originally developed by Google, it has become the de-facto standard for running containers at scale.

**Kubernetes local Cluster**
: A Kubernetes cluster is a **collection of machines (nodes) designed to run containerized applications**. It is the core of Kubernetes' functionality, *enabling the orchestration, scaling, and management of containers* across multiple machines, whether they are physical, virtual, on-premises, or in the cloud.

   > * **Control Plane**: This is the **brain of the cluster**, responsible for **managing the desired  > > > state** of the **system**. It includes: 
   >     * **kube-apiserver**: Exposes the Kubernetes API for communication. 
   >     * **etcd**: A key-value store for cluster data persistence.
   >     * **kube-scheduler**: Assigns pods to nodes based on resource availability and constraints. 
   >     * **kube-controller-manager**: Manages controllers like node health, job completion, and     replication.
   >* **Nodes**: These are the **worker machines** (physical or virtual) that run the actual workloads. 
   > Each node contains:
   >    * **kubelet**: Ensures containers in pods are running and healthy. 
   >    * **kube-proxy**: Manages networking rules for communication between pods. Container 
   >    * **Runtime**: Executes containers (e.g., containerd, CRI-O).
   > * **Pods**: The **smallest deployable unit** in Kubernetes, **containing one or more containers** that > share resources like storage and networking.

**Services and Networking**
: Service: Exposes pods as a network service, enabling communication. Ingress: Manages external access to services, such as HTTP routing

**Kind**
: kind is a tool for running local Kubernetes clusters using Docker container "nodes". kind was primarily designed for testing Kubernetes itself, but may be used for local development or CI.

**Kubernetes local Cluster**
: A local Kubernetes cluster is a versatile tool for developers and learners to experiment with Kubernetes features.

**Kubernetes Service**
: A Kubernetes service is a **logical abstraction that exposes a group of Pods running in a cluster to clients over the network**. It provides a stable endpoint and load balancing features, allowing applications to communicate reliably without tracking individual Pod IPs. Services enable seamless communication between different parts of an application, ensuring that clients can interact with the application consistently, regardless of the underlying Pods' ephemeral nature.

**Pip**
: pip is the package installer for Python. You can use pip to install packages from the Python Package Index and other indexes.

**Python**
: Python is a programming language that lets you work quickly
and integrate systems more effectively

**Runner**
: A GitHub Runner is a machine that executes the jobs defined in a GitHub Actions workflow. It acts as the environment where the workflow's steps are carried out, such as running scripts, building code, or deploying applications. Runners can be either GitHub-hosted or self-hosted, depending on the level of control and customization required.

**self-service workflows**
: System or process that allows users to access information, perform tasks, or resolve issues independently without direct assistance from staff.

**streamline software delivery**
: Process of optimizing and simplifying the entire software development lifecycle, from conceptualization to deployment.

**Workflow**
: Workflow procedures describe temporal and causal dependencies among activities represented as steps.

**YAML**
: YAML (YAML Ain't Markup Language) is a human-readable data serialization language commonly used for configuration files and data exchange between languages with different data structures. It is designed to be easy to read and write, making it a popular choice for configuration files and data serialization.

</details>

<details> <summary>[Ricardo Andrea Gonzalez Gomez](https://squad.udemy.com/user/ricardo-andre-gonzalez-gomez/)</summary>

* DevOps Engineer & SysAdmin.
* Cloud Architect & Linux Specialist.
* Red Hat Certified Engineer.
* Red Hat Certified System Administrator.

</details>

## Intro

Backstage part of Ricardo Andrea Gonzalez Gomez [UDEMY course](https://squad.udemy.com/course/from-devops-to-platform-engineering-master-backstage-idps)

Me testing prerequisites first part [ backstagebase ](https://github.com/lucilegabriellefievetlacombe-afk/backstagebase)

## Meet Backstage

#### Tuto Program :

* 3 Mains backstage packages :
  * Backstage Software Catalog
  * Backstage TechDocs
  * Backsatge Software Templates
* Backstage Production mode
* Backstage on k8s
* Final Quiz

### Deploy with Docker

*slide 64. Deploy Backstage using Docker II* 

* add docker images, node:18-bookworm-slim
* https://hub.docker.com/_/node/
* https://hub.docker.com/_/node/tags?name=alpine&page=2 node:iron-alpine3.23 45.68 MB

*I don't have a powerfull PC, so I take the smallest alpine node image. Tacking the one proposed by Backstage documentation and Ricardo course it certainly safer.*

#### get in your wsl2 linux or your linux os

*Be carrefull to not get in a shared/linked/mounted directory with wsl2.*
It is practical to share source directory to edit them directly with windows IDE. But this method induce big perfomance issues.
See Slide 63. Perfomance issues on Windows with Docker Voulumes.

#### get recent smallest node docker image

```bash
docker pull node:iron-alpine3.23
```

<details> <summary>results</summary>

```bash result
iron-alpine3.23: Pulling from library/node
d28ab52fe429: Pull complete
34226f541496: Pull complete
014e56e61396: Pull complete
6ac8cc1f0b52: Pull complete
Digest: sha256:643e7036aa985317ebfee460005e322aa550c6b6883000d01daefb58689a58e2
Status: Downloaded newer image for node:iron-alpine3.23
docker.io/library/node:iron-alpine3.23
```

</details>

* we get inside node:18-bookworm-slim, automatic remove (rm), interactive (it), with mount file share, work (w) in /app with bash.
* we are in ~/home/ our project directory is backstage-app
  
*ps: do **not** go inside a mounted directory shared with **windows***

```bash
cd ~/bckstg # we are not in shared windows directory
docker run --rm -p 3000:3000 -it -v `pwd`:/app -w /app node:iron-alpine3.23 sh
```

<details> <summary>results</summary>


```bash result
/app # pwd
/app
/app # whoami
root
/app # node -v
v20.19.6
/app # npm -v
10.8.2
/app # yarn -v
1.22.22
```

</details>

#### install latest npm

```bash
npm install -g npm@latest
```

<details> <summary>results</summary>

```bash result
removed 45 packages, and changed 107 packages in 23s

16 packages are looking for funding
  run `npm fund` for details
```

</details>

```bash
npm -v
```

<details> <summary>results</summary>

```bash result
11.6.4
```

</details>

#### get yarn 4.4.1

```bash
npm install -g corepack
yarn set version 4.4.1
```

<details> <summary>results</summary>

```bash result
! Corepack is about to download https://repo.yarnpkg.com/4.12.0/packages/yarnpkg-cli/bin/yarn.js
? Do you want to continue? [Y/n] Y

➤ YN0000: Done in 0s 5ms
```

</details>

```bash
yarn --version
```

<details> <summary>results</summary>

```bash result
4.4.1
```

</details>

* adding vim, curl, python3, py3-pip, make, g++ and bash

```bash
apk add --no-cache vim curl python3 py3-pip make g++ bash github-cli
```

*could try without py3-pip *

### backstage Install - inside our alpine node image

* we use npx to install baskstage app

```bash
npx @backstage/create-app@latest
```

<details> <summary>results</summary>

*we call it backstage*

```bash result
Need to install the following packages:
@backstage/create-app@0.7.6
Ok to proceed? (y) y

\

? Enter a name for the app [required]
   backstage

Creating the app...

 Checking if the directory is available:
  checking      backstage ✔

 Creating a temporary app directory:

 Preparing files:
  copying       .dockerignore ✔
  copying       .eslintignore ✔
  templating    .gitignore.hbs ✔
  templating    .eslintrc.js.hbs ✔
  copying       .prettierignore ✔
  templating    .yarnrc.yml.hbs ✔
  copying       README.md ✔
  copying       app-config.local.yaml ✔
  copying       app-config.production.yaml ✔
  templating    backstage.json.hbs ✔
  templating    app-config.yaml.hbs ✔
  templating    catalog-info.yaml.hbs ✔
  templating    package.json.hbs ✔
  copying       playwright.config.ts ✔
  copying       tsconfig.json ✔
  copying       yarn.lock ✔
  copying       README.md ✔
  copying       yarn-4.4.1.cjs ✔
  copying       entities.yaml ✔
  copying       org.yaml ✔
  copying       template.yaml ✔
  copying       catalog-info.yaml ✔
  copying       index.js ✔
  copying       package.json ✔
  copying       README.md ✔
  copying       Dockerfile ✔
  templating    .eslintrc.js.hbs ✔
  templating    package.json.hbs ✔
  copying       README.md ✔
  copying       index.ts ✔
  copying       .eslintignore ✔
  templating    .eslintrc.js.hbs ✔
  templating    package.json.hbs ✔
  copying       app.test.ts ✔
  copying       android-chrome-192x192.png ✔
  copying       apple-touch-icon.png ✔
  copying       favicon-16x16.png ✔
  copying       favicon.ico ✔
  copying       favicon-32x32.png ✔
  copying       index.html ✔
  copying       robots.txt ✔
  copying       manifest.json ✔
  copying       safari-pinned-tab.svg ✔
  copying       App.test.tsx ✔
  copying       App.tsx ✔
  copying       apis.ts ✔
  copying       index.tsx ✔
  copying       setupTests.ts ✔
  copying       EntityPage.tsx ✔
  copying       SearchPage.tsx ✔
  copying       LogoFull.tsx ✔
  copying       Root.tsx ✔
  copying       LogoIcon.tsx ✔
  copying       index.ts ✔

 Moving to final location:
  moving        backstage ✔
  fetching      yarn.lock seed ✖

 Installing dependencies:
  executing     yarn install ◟

... (coffee time)

```

</details>

```bash
cd /app/backstage; yarn start
```

<details> <summary>results</summary>

*we call it backstage*

```bash result
Starting app, backend
Loaded config from app-config.yaml
/bin/sh: git: not found
/bin/sh: git: not found
NOTE: Did not compute git version or commit hash, could not execute the git command line utility
<i> [webpack-dev-server] Project is running at:
<i> [webpack-dev-server] Loopback: http://localhost:3000/, http://[::1]:3000/
<i> [webpack-dev-server] On Your Network (IPv4): http://172.17.0.2:3000/
<i> [webpack-dev-server] Content not from webpack is served from '/app/backstage/packages/app/public' directory
<i> [webpack-dev-server] 404s will fallback to '/index.html'
Rspack compiled successfully
...
2025-12-07T20:11:58.687Z search info Collating documents for techdocs succeeded documentType="techdocs"
2025-12-07T20:11:58.782Z rootHttpRouter info [2025-12-07T20:11:58.782Z] "GET /api/catalog/entities/by-query?limit=500 HTTP/1.1" 200 0 "-" "node-fetch/1.0 (+https://github.com/bitinn/node-fetch)" type="incomingRequest" date="2025-12-07T20:11:58.782Z" method="GET" url="/api/catalog/entities/by-query?limit=500" status=200 httpVersion="1.1" userAgent="node-fetch/1.0 (+https://github.com/bitinn/node-fetch)"
2025-12-07T20:11:58.826Z search info Collating documents for software-catalog succeeded documentType="software-catalog"
```

</details>

* http://localhost:3000/ is not accessible on the host, we have to configure it
* the end point is only available inside the container
* we stop it with Ctr C
* adding app.listen.host in app-config.yaml to listen from every where

```bash
vim app.listen.host.yaml
```

```yaml
app:
  title: Scaffolded Backstage App
  BaseUrl: http://loclahost:3000
  listen:
    host: 0.0.0.0
...
```

```bash
yarn start
```

* http://localhost:3000/ is accessible :)
* but if we try to enter we have an error message

```html
Error
You cannot sign in as a guest, you must either enable the legacy guest token or configure the auth backend to support guest sign in.
Call Stack
 handle
  node_modules/@backstage/core-components/dist/layout/SignInPage/guestProvider.esm.js:68:13
```

* we need a token
* we save our container image to continue the tuto later

```bash
docker container ls # we take our container id with ports 3000
docker commit 7f7156a45af2 backstage:v0
```

* next time we will use the v0
* we can have to term with exec command

```bash
docker run --rm -p 3000:3000 -it -v `pwd`:/app -w /app backstage:v0 sh
docker container ls # we take our container id with ports 3000
docker exec -it 8c0b8d5fd52c bash
```

### Github OAuth Authentication Config

*Slide 65. Configure GitHub OAuth authentication - I*

* we expose the backend 7007:7007 ports

```bash
docker run --rm -it -p 3000:3000 -p 7007:7007 -v `pwd`:/app -w /app backstage:v0
```

* what authentication methode we will use ?
* We check the configuration file, we look at auth section

```bash
vim backstage/app-config.yaml
```

```yaml app-config.yaml line 66
auth:
  # see https://backstage.io/docs/auth/ to learn about auth providers
  providers:
    # See https://backstage.io/docs/auth/guest/provider
    guest: {}
```

* move local host configuration with auth in [local configuration](backstage/app-config.local.yaml)
* clean general configuration [general configuration](backstage/app-config.yaml)
* add authentication backend provider configuration

```bash
vim backstage/app-config.local.yaml
```

```yaml app-config.local.yaml
# Backstage override configuration for your local development environment
#
app:
  title: Scaffolded Backstage App
  baseUrl: http://localhost:3000
  listen:
    hots: 0.0.0.0
organization:
  name: luspokvenus

auth:
  environment: development
  providers:
    github:
      development:
        clientId: ${AUTH_GITHUB_CLIENT_ID}
        clientSecret: ${AUTH_GITHUB_CLIENT_SECRET}
        ## uncomment if using GitHub Enterprise
        # enterpriseInstanceUrl: ${AUTH_GITHUB_ENTERPRISE_INSTANCE_URL}
        ## uncomment to set lifespan of user session
        # sessionDuration: { hours: 24 } # supports `ms` library format (e.g. '24h', '2 days'),
        # ISO duration, "human duration" as used in code
        signIn:
          resolvers:
            # See https://backstage.io/docs/auth/github/provider#resolvers for more resolvers
            - resolver: usernameMatchingUserEntityName
```

* we go to see https://backstage.io/docs/auth/
* we don't want the guest method, we want one with a real authentication methode
* we take the [github auth](https://backstage.io/docs/auth/github/provider#create-an-oauth-app-on-github)
   * we will create the OAuth App
   * we go in the [developer settings](https://github.com/settings/developers)

<img width="503" height="732" alt="image" src="https://github.com/user-attachments/assets/55253d7a-68b6-4380-9450-f03591a20044" />

* exit your container, get back in your wsl2 or linux host term 
* create a .env with AUTH_GITHUB_CLIENT ID and secret

```bash
vim .env
```

```yaml
#https://github.com/settings/applications/3279413
#OAuth user tokens
AUTH_GITHUB_CLIENT_ID=yourMagnificClientIDofGithub 
AUTH_GITHUB_CLIENT_SECRET=yourmagnificsecretforyourgithubclientid
```

* source your .env

```bash
source .env
```

* you have the environment variable available in your host terminal

```bash
echo $AUTH_GITHUB_CLIENT_ID $AUTH_GITHUB_CLIENT_SECRET
```

* run the container again with OAuth environment variables

```bash
docker run --rm -e AUTH_GITHUB_CLIENT_ID=$AUTH_GITHUB_CLIENT_ID -e AUTH_GITHUB_CLIENT_SECRET=$AUTH_GITHUB_CLIENT_SECRET -it -p 3000:3000 -p 7007:7007 -v `pwd`/:/app -w /app backstage:v0 bash
```

<details> <summary>results</summary>

```bash result
c18aac944191:/app# echo $AUTH_GITHUB_CLIENT_ID
yourMagnificClientIDofGithub
c18aac944191:/app# echo $AUTH_GITHUB_CLIENT_SECRET
yourmagnificsecretforyourgithubclientid
c18aac944191:/app#
```
</details>

* your env vars are passed inside the container env

### Backstage Plugins

*Slide 67.Dowload Backstage pluglins*

* add [github provider](https://backstage.io/docs/auth/github/provider/]

```bash
yarn --cwd packages/backend add @backstage/plugin-auth-backend-module-github-provider
```

<details> <summary>results</summary>

```bash result
➤ YN0000: · Yarn 4.4.1
➤ YN0000: ┌ Resolution step
➤ YN0000: └ Completed in 1s 954ms
➤ YN0000: ┌ Post-resolution validation
➤ YN0060: │ @testing-library/react is listed by your project with version 14.3.1 (pc9eb9), which doesn't satisfy what @backstage/test-utils requests (^16.0.0).
➤ YN0060: │ react is listed by your project with version 18.3.1 (pd98da), which doesn't satisfy what @material-ui/core and other dependencies request (but they have non-overlapping ranges!).
➤ YN0060: │ react-dom is listed by your project with version 18.3.1 (pfa800), which doesn't satisfy what @material-ui/core and other dependencies request (but they have non-overlapping ranges!).
➤ YN0002: │ app@workspace:packages/app doesn't provide @types/react (pceee1), requested by @backstage/app-defaults and other dependencies.
➤ YN0002: │ app@workspace:packages/app doesn't provide webpack (p299d9), requested by @backstage/cli.
➤ YN0002: │ backend@workspace:packages/backend doesn't provide webpack (p00f29), requested by @backstage/cli.
➤ YN0002: │ root@workspace:. doesn't provide webpack (p40c38), requested by @backstage/cli.
➤ YN0086: │ Some peer dependencies are incorrectly met by your project; run yarn explain peer-requirements <hash> for details, where <hash> is the six-letter p-prefixed code.
➤ YN0086: │ Some peer dependencies are incorrectly met by dependencies; run yarn explain peer-requirements for details.
➤ YN0000: └ Completed
➤ YN0000: ┌ Fetch step
➤ YN0000: └ Completed in 8s 173ms
➤ YN0000: ┌ Link step
➤ YN0000: └ Completed in 3s 892ms
➤ YN0000: · Done with warnings in 14s 885ms
```
</details>

* edit [backend type script](backstage/packages/backend/src/index.ts)
* [doc](https://github.com/backstage/backstage/blob/master/docs/auth/github/provider.md#backend-installation)

```bash
vim backstage/packages/backend/src/index.ts
```

```typescript backstage/packages/backend/src/index.ts line 26
// auth plugin
backend.add(import('@backstage/plugin-auth-backend'));
// See https://backstage.io/docs/backend-system/building-backends/migrating#the-auth-plugin
backend.add(import('@backstage/plugin-auth-backend-module-github-provider'));
// backend.add(import('@backstage/plugin-auth-backend-module-guest-provider'));
// See https://backstage.io/docs/auth/guest/provider
```


* frontend part [sign-in configuration](https://backstage.io/docs/auth/#sign-in-configuration)

```
vim packages/app/src/App.tsx
```

```javascript
// line 28
import { githubAuthApiRef } from '@backstage/core-plugin-api';
import {
   AlertDisplay,
   OAuthRequestDialog,
   SignInPage
} from '@backstage/core-components';
...
// line 61
const app = createApp({
  components: {
    SignInPage: props => (
      <SignInPage
        {...props}
        auto
        provider={{
          id: 'github-auth-provider',
          title: 'GitHub',
          message: 'Sign in using GitHub',
          apiRef: githubAuthApiRef,
        }}
      />
    ),
  },
  // ..
});
```

### Backstage Resolvers

*Slide 69. Backstage resolver*

* We need white liste of user
* create users in backstage
* packages/catalog-model/examples/acme/team-a-group.yaml
* [add user sample](https://github.com/backstage/backstage/blob/master/packages/catalog-model/examples/acme/team-a-group.yaml)

```bash
cd /app/backstage/
mkdir -p catalog/entities
vim catalog/entities/users.yaml
```

```yaml catalog/entities/users.yaml
apiVersion: backstage.io/v1alpha1
kind: User
metadata:
  name: ${your_login_in_github}
spec:
  profile:
    # Intentional no displayName for testing
    email: ${your_email_used_in_github}
    picture: https://gravatar.com/facealways0c1cc78340
  memberOf: [team-a]
```

*only me can login (from github)*
  
* how do backstage got the white lits ?
* we add an extra config, to tell backstage to use our [users](backstage/catalog/entities/users.yaml) file

```bash
vim app-config.yaml
```

* look for catalog section (line 68)

```yaml  app-config.yaml line 68
catalog:
  import:
    entityFilename: catalog-info.yaml
    pullRequestBranchName: backstage-integration
  rules:
    - allow:
        - Component
        - API
        - Resource
        - System
        - Domain
        - Location
  locations:
    - type: file
      target: /app/backstage/catalog/entities/users.yaml
```

* copy and past in our local configuration 
* clean not usefull import and rules
* Add User rule
* set our target file

```yaml  app-config.local.yaml line 29
catalog:
  rules:
    - allow:
        - User
        - Component
        - API
        - Resource
        - System
        - Location
  locations:
    - type: file
      target: /app/backstage/catalog/entities/users.yaml
```

* we have created our white list, and configure backsatge to use it

*for me merge is not ok, so I did a complete and distinct app-config.local.yaml, with all sections*

*Slide 70. Test the Backsatge authentication*

#### recap
* we followed doc,
   * we created a OAuth App on github with our local url and ports
   * we added authentication for ou client 
   * we modify our local conf to uses them as env vars to the container
   * we dowloaded the plugin insid our container
   * we add the plugin to the back end and then to the front end
   * we made the changes for the user resolver - we wanted to match the name
   * we added the users catalog and configured it in the local config

### Test

```bash
cd /app/backstage/
yarn start --config `pwd`/app-config.local.yaml
```

*yarn dev is deprecated*

<details> <summary>results</summary>

```bash result
source .env; docker run --rm -e AUTH_GITHUB_CLIENT_ID=$AUTH_GITHUB_CLIENT_ID -e AUTH_GITHUB_CLIENT_SECRET=$AUTH_GITHUB_CLIENT_SECRET -it -p 3000:3000 -p 7007:7007 -v `pwd`/:/app -w /app backstage:v0 bash
7bacffbb16db:/app# $AUTH_GITHUB_CLIENT_ID
bash: Ov23liBK1L8HtSe0U0bp: command not found
7bacffbb16db:/app# apk add --no-cache vim curl python3 py3-pip make g++ bash github-cli
(1/4) Installing pcre2 (10.47-r0)
(2/4) Installing git (2.52.0-r0)
(3/4) Installing git-init-template (2.52.0-r0)
(4/4) Installing github-cli (2.83.0-r1)
Executing busybox-1.37.0-r29.trigger
OK: 421 MiB in 72 packages
7bacffbb16db:/app# cd backstage/
7bacffbb16db:/app/backstage# yarn start
Starting app, backend
Loaded config from app-config.yaml, app-config.local.yaml
fatal: detected dubious ownership in repository at '/app'
To add an exception for this directory, call:

        git config --global --add safe.directory /app
fatal: detected dubious ownership in repository at '/app'
To add an exception for this directory, call:

        git config --global --add safe.directory /app
NOTE: Did not compute git version or commit hash, could not execute the git command line utility
<i> [webpack-dev-server] Project is running at:
<i> [webpack-dev-server] Loopback: http://localhost:3000/, http://[::1]:3000/
<i> [webpack-dev-server] On Your Network (IPv4): http://172.17.0.2:3000/
<i> [webpack-dev-server] Content not from webpack is served from '/app/backstage/packages/app/public' directory
<i> [webpack-dev-server] 404s will fallback to '/index.html'
Rspack compiled successfully
Loading config from MergedConfigSource{FileConfigSource{path="/app/backstage/app-config.yaml"}, FileConfigSource{path="/app/backstage/app-config.local.yaml"}, EnvConfigSource{count=0}}
2025-12-10T16:40:34.677Z backstage info Found 2 new secrets in config that will be redacted
2025-12-10T16:40:34.754Z rootHttpRouter info Listening on 0.0.0.0:7007
2025-12-10T16:40:34.758Z backstage info Plugin initialization started: 'app', 'proxy', 'scaffolder', 'techdocs', 'auth', 'catalog', 'permission', 'search', 'kubernetes', 'notifications', 'signals' type="initialization"
```

<img width="1892" height="781" alt="image" src="https://github.com/user-attachments/assets/0ca6a2fb-eb21-4afe-806b-4edb59a2ce79" />

</details>

### Test Authentication

<img width="883" height="403" alt="image" src="https://github.com/user-attachments/assets/ad12c518-90cc-420d-b59c-305671a6c65d" />
<img width="883" height="403" alt="image" src="https://github.com/user-attachments/assets/363acbe5-ead7-4335-8b3d-7ca3f9ce75e2" />
<img width="992" height="1002" alt="image" src="https://github.com/user-attachments/assets/09bb0fe7-3aed-4149-b18e-81335cf7e644" />

<img width="881" height="641" alt="image" src="https://github.com/user-attachments/assets/26ad0471-770a-47fc-a5d3-12730e603518" />
<img width="892" height="623" alt="image" src="https://github.com/user-attachments/assets/bfc69309-8dc8-47aa-993c-9d853f515654" />

* keep as new image

```bash
docker ps
docker commit 7bacffbb16db backstage:v1
```

## Backstage Software Catalog

* Restart new backstage image with local configuration only

```bash
cd ~/bckstg
source .env
docker run --rm -it -e AUTH_GITHUB_CLIENT_ID=$AUTH_GITHUB_CLIENT_ID -e AUTH_GITHUB_CLIENT_SECRET=$AUTH_GITHUB_CLIENT_SECRET -p 3000:3000 -p 7007:7007 -v `pwd`:/app -w /app backstage:v1 bash
cd /app/backstage
yarn start --config `pwd`/app-config.local.yaml
```

<details> <summary>results</summary>

```bash result
Starting app, backend
Loaded config from app-config.local.yaml
fatal: detected dubious ownership in repository at '/app'
To add an exception for this directory, call:

        git config --global --add safe.directory /app
fatal: detected dubious ownership in repository at '/app'
To add an exception for this directory, call:

        git config --global --add safe.directory /app
NOTE: Did not compute git version or commit hash, could not execute the git command line utility
<i> [webpack-dev-server] Project is running at:
<i> [webpack-dev-server] Loopback: http://localhost:3000/, http://[::1]:3000/
<i> [webpack-dev-server] On Your Network (IPv4): http://172.17.0.2:3000/
<i> [webpack-dev-server] Content not from webpack is served from '/app/backstage/packages/app/public' directory
<i> [webpack-dev-server] 404s will fallback to '/index.html'
Rspack compiled successfully
Loading config from MergedConfigSource{FileConfigSource{path="/app/backstage/app-config.local.yaml"}, EnvConfigSource{count=0}}
2025-12-11T11:16:38.340Z backstage info Found 2 new secrets in config that will be redacted
2025-12-11T11:16:38.430Z rootHttpRouter info Listening on 0.0.0.0:7007
2025-12-11T11:16:38.436Z backstage info Plugin initialization started: 'app', 'proxy', 'scaffolder', 'techdocs', 'auth', 'catalog', 'permission', 'search', 'kubernetes', 'notifications', 'signals' type="initialization"
```
</details>

### What is Backstage Software Catalog ?

* The Catalog is on the home page 

<img width="908" height="617" alt="image" src="https://github.com/user-attachments/assets/597865c9-858d-4bbd-bd0c-0b52dfcb131c" />


* [backstage software catalog doc](https://backstage.io/docs/features/software-catalog/)

The Backstage Software Catalog is a centralized system that keeps track of ownership and metadata for all the software in your ecosystem (services, websites, libraries, data pipelines, etc). The catalog is built around the concept of metadata YAML files stored together with the code, which are then harvested and visualized in Backstage.

*Slide 71. What is backsatge catalog ?*

### External components

* [backstage doc on external integration](https://backstage.io/docs/features/software-catalog/external-integrations)

*Slide 72. Can you registers existant components into Backstage ?*

* add the catalog info for your component, example for our python-app :
  * https://github.com/your-own-github-account/pyhon-app.git/catalog-info.yaml 

```yaml
apiVersion: backstage.io/v1alpha1
kind: Component
metadata:
  name: python-app
  description: Python app that displays gretings.
  annotations:
    github.com/project-slug: your-own-github-account/pyhon-app
    backstage.io/techdocs-ref: dir:.
spec:
  type: service
  owner: dev-team
  lifecycle: experimental
```

*we set a group as owner, let's say **dev-team***

### Group Enties Config

We will add the group **dev-team** inside the container.

* get in the container

```bash
docker ps
docker exec -it theidofthebackstagecontainer bash
```

* add and edit a backstage catalog groups entity
* [acme doc sample](https://github.com/backstage/backstage/blob/master/packages/catalog-model/examples/acme/backstage-group.yaml)

```bash 
vim backstage/catalog/entities/groups.yaml
```

* we call it dev-team
* we keep children
* we remove parent
* change icon, mail and description

```yaml catalog/entities/groups.yaml
apiVersion: backstage.io/v1alpha1
kind: Group
metadata:
  name: dev-team
  description: Team for developers
spec:
  type: team
  profile:
    email: ${your_email_used_in_github}
    picture: https://0.gravatar.com/userimage/273238023/d8c1653a7bee11bb7b21dc09624e8221?size=256
  children: []
```

* edit user.yaml to set the usuer inside the group dev-tem

```bash 
vim backstage/catalog/entities/users.yaml
```

```yaml  backstage/catalog/entities/users.yaml
...
  memberOf: [dev-team]
```

* edit the backstage/app-config.local.yaml config file

```bash 
vim backstage/app-config.local.yaml
```

```yaml backstage/app-config.local.yaml
...
catalog:
  import:
    entityFilename: catalog-info.yaml
    pullRequestBranchName: backstage-integration
  rules:
    - allow: [Component, System, API, Resource, Location]
  locations:
    - type: file
      target: /app/backstage/catalog/entities/groups.yaml
      rules:
        - allow: [Group]
    - type: file
      target: /app/backstage/catalog/entities/users.yaml
      rules:
        - allow: [User]
```

<img width="977" height="820" alt="image" src="https://github.com/user-attachments/assets/fe8adcab-c48b-46f9-8896-c1d99c1bec7b" />

### Register external components into the Backstage Catalog

## Backstage TechDocs

*Slide 79*

* [getting-started](https://backstage.io/docs/features/techdocs/getting-started/)
* [creating-and-publishing](https://backstage.io/docs/features/techdocs/creating-and-publishing/)
* [techdocs-cli](https://github.com/backstage/backstage/tree/master/packages/techdocs-cli)

* add yarn techdocs plugins

* [Adding TechDocs frontend plugin](https://backstage.io/docs/features/techdocs/getting-started/#adding-techdocs-frontend-plugin)

```bash
vim packages/app/src/App.tsx
```

```tsx
import {
  DefaultTechDocsHome,
  TechDocsIndexPage,
  TechDocsReaderPage,
} from '@backstage/plugin-techdocs';
import { TechDocsAddons } from '@backstage/plugin-techdocs-react';
import { ReportIssue } from '@backstage/plugin-techdocs-module-addons-contrib';

const AppRoutes = () => {
  <FlatRoutes>
    {/* ... other plugin routes */}
    <Route path="/docs" element={<TechDocsIndexPage />}>
      <DefaultTechDocsHome />
    </Route>
    <Route
      path="/docs/:namespace/:kind/:name/*"
      element={<TechDocsReaderPage />}
    >
      <TechDocsAddons>
        <ReportIssue />
      </TechDocsAddons>
    </Route>
  </FlatRoutes>;
};
```

* [Adding TechDocs Backend plugin](https://backstage.io/docs/features/techdocs/getting-started/#adding-techdocs-backend-plugin)

```bash
vim packages/backend/src/index.ts
```

```ts packages/backend/src/index.ts
const backend = createBackend();

// Other plugins...

backend.add(import('@backstage/plugin-techdocs-backend'));

backend.start();
```


```bash
vim app-config.local.yaml
```

```yaml
techdocs:
  generator:
    runIn: 'local' # 'docker' as we use it a docker we don't wand a DIND 
  builder: 'local'
  publisher:
    type: 'local'
  cache:
    ttl: 3600000
```

```bash
yarn --cwd packages/app add @backstage/plugin-techdocs
yarn --cwd packages/backend add @backstage/plugin-techdocs-backend
```

<details> <summary>results</summary>

```bash result
➤ YN0000: · Yarn 4.4.1
➤ YN0000: ┌ Resolution step
➤ YN0000: └ Completed in 2s 377ms
➤ YN0000: ┌ Post-resolution validation
➤ YN0060: │ @testing-library/react is listed by your project with version 14.3.1 (pc9eb9), which doesn't satisfy what @backstage/test-utils requests (^16.0.0).
➤ YN0060: │ react is listed by your project with version 18.3.1 (pd98da), which doesn't satisfy what @material-ui/core and other dependencies request (but they have non-overlapping ranges!).
➤ YN0060: │ react-dom is listed by your project with version 18.3.1 (pfa800), which doesn't satisfy what @material-ui/core and other dependencies request (but they have non-overlapping ranges!).
➤ YN0002: │ app@workspace:packages/app doesn't provide @types/react (pceee1), requested by @backstage/app-defaults and other dependencies.
➤ YN0002: │ app@workspace:packages/app doesn't provide webpack (p299d9), requested by @backstage/cli.
➤ YN0002: │ backend@workspace:packages/backend doesn't provide webpack (p00f29), requested by @backstage/cli.
➤ YN0002: │ root@workspace:. doesn't provide webpack (p40c38), requested by @backstage/cli.
➤ YN0086: │ Some peer dependencies are incorrectly met by your project; run yarn explain peer-requirements <hash> for details, where <hash> is the six-letter p-prefixed code.
➤ YN0086: │ Some peer dependencies are incorrectly met by dependencies; run yarn explain peer-requirements for details.
➤ YN0000: └ Completed
➤ YN0000: ┌ Fetch step
➤ YN0000: └ Completed in 8s 883ms
➤ YN0000: ┌ Link step
➤ YN0000: └ Completed in 4s 256ms
➤ YN0000: · Done with warnings in 16s 228ms
```

```bash result
➤ YN0000: · Yarn 4.4.1
➤ YN0000: ┌ Resolution step
➤ YN0000: └ Completed in 2s 615ms
➤ YN0000: ┌ Post-resolution validation
➤ YN0060: │ @testing-library/react is listed by your project with version 14.3.1 (pc9eb9), which doesn't satisfy what @backstage/test-utils requests (^16.0.0).
➤ YN0060: │ react is listed by your project with version 18.3.1 (pd98da), which doesn't satisfy what @material-ui/core and other dependencies request (but they have non-overlapping ranges!).
➤ YN0060: │ react-dom is listed by your project with version 18.3.1 (pfa800), which doesn't satisfy what @material-ui/core and other dependencies request (but they have non-overlapping ranges!).
➤ YN0002: │ app@workspace:packages/app doesn't provide @types/react (pceee1), requested by @backstage/app-defaults and other dependencies.
➤ YN0002: │ app@workspace:packages/app doesn't provide webpack (p299d9), requested by @backstage/cli.
➤ YN0002: │ backend@workspace:packages/backend doesn't provide webpack (p00f29), requested by @backstage/cli.
➤ YN0002: │ root@workspace:. doesn't provide webpack (p40c38), requested by @backstage/cli.
➤ YN0086: │ Some peer dependencies are incorrectly met by your project; run yarn explain peer-requirements <hash> for details, where <hash> is the six-letter p-prefixed code.
➤ YN0086: │ Some peer dependencies are incorrectly met by dependencies; run yarn explain peer-requirements for details.
➤ YN0000: └ Completed
➤ YN0000: ┌ Fetch step
➤ YN0000: └ Completed in 8s 374ms
➤ YN0000: ┌ Link step
➤ YN0000: └ Completed in 2s 322ms
➤ YN0000: · Done with warnings in 13s 767ms
```

</details>

*Slide 80*
* add mkdocs-techdocs-core

```bash
export VIRTUAL_ENV=/opt/venv
python3 -m venv $VIRTUAL_ENV
export PATH="$VIRTUAL_ENV/bin:$PATH"
pip3 install mkdocs-techdocs-core
```

*It should be included in dockerfile*

### What are TechDocs ?

TechDocs is Spotify’s homegrown docs-like-code solution built directly into Backstage. Engineers write their documentation in Markdown files which live together with their code - and with little configuration get a nice-looking doc site in Backstage.

### Write Code Doc with Backstage

* [backstage sample project mkdocs](https://github.com/backstage/backstage/blob/master/mkdocs.yml)
* Add it to your project

* project doc is in the project
* mkdoc is running in backstage container

#### Dockerfiles for backstage local installation (wsl2)

*make a dockerfile-build for backstage build and 
installation, and a dockerfile-start for backstage use.*

##### Dockerfile building backstage base : packadges, librairies, sources and default configurations 

* The dockerfile-buid will :
   * use an alpine node image
   * create and use /app directory
   * upade npm
   * set yarn 4.4.1 version
   * install python3, pip, bash, curl, vim or nano, github-ci and others usefull or necessary linux apk packadges
   * use the shell and python venv
   * install mkdocs-techdocs-core python lib
   * set the entrypoint for backstage installation at run
   * set labels

```bash
cd ~/bckstg; vim Dockerfile-build
```

```yaml Dockerfile-build
# Alpine Node for Backstage Image Build
FROM node:iron-alpine3.23

RUN mkdir -p /app
WORKDIR /app

# Update npm, intall corepack
RUN npm install -g npm@latest
RUN npm install -g corepack

# Set yarn version 4.4.1
RUN yarn set version 4.4.1
RUN apk update && apk add --no-cache vim curl python3 py3-pip make g++ bash github-cli
# Change the shell
SHELL ["/bin/bash", "-c"]

# Adding python venv for mkdocs techdocs installation
ENV VIRTUAL_ENV=/opt/venv
RUN python3 -m venv $VIRTUAL_ENV
ENV PATH="$VIRTUAL_ENV/bin:$PATH"

# Adding mkdocs-techdoc
RUN pip3 install mkdocs-techdocs-core

# Set the entrypoint for backstage installation at run
# will need mount point for /app outside windows
ENTRYPOINT npx @backstage/create-app@latest

LABEL img=alpine-backstage-build description="image for local backstage build" version="0.0.1"
```

* build the build stage image for backstage

```bash 
cd ~/bckstg; docker build -f Dockerfile-build -t alpine-backstage-build:0.0.1 .
```

<details> <summary>results</summary>

```bash result
[+] Building 120.4s (14/14) FINISHED                                             docker:default
 => [internal] load build definition from Dockerfile-build                                 0.0s
 => => transferring dockerfile: 875B                                                       0.0s
 => [internal] load metadata for docker.io/library/node:iron-alpine3.23                    2.4s
 => [auth] library/node:pull token for registry-1.docker.io                                0.0s
 => [internal] load .dockerignore                                                          0.0s
 => => transferring context: 2B                                                            0.0s
 => [1/9] FROM docker.io/library/node:iron-alpine3.23@sha256:643e7036aa985317ebfee460005e  9.5s
 => => resolve docker.io/library/node:iron-alpine3.23@sha256:643e7036aa985317ebfee460005e  0.0s
 => => sha256:6ac8cc1f0b52065d2132d052abc59bf19e19ac0c65729d4300ab41db30fed85 446B / 446B  0.4s
 => => sha256:34226f5414967f183a8ba2d2a0bf2809b3864182e8f68c07c066fa83f02 1.26MB / 1.26MB  0.9s
 => => sha256:d28ab52fe4290429b930e8fa368da4da8a7e63cf143c38f9b869950a6 42.78MB / 42.78MB  7.7s
 => => sha256:014e56e613968f73cce0858124ca5fbc601d7888099969a4eea69f31dcd 3.86MB / 3.86MB  3.4s
 => => extracting sha256:014e56e613968f73cce0858124ca5fbc601d7888099969a4eea69f31dcd71a53  0.2s
 => => extracting sha256:d28ab52fe4290429b930e8fa368da4da8a7e63cf143c38f9b869950a67c32645  1.5s
 => => extracting sha256:34226f5414967f183a8ba2d2a0bf2809b3864182e8f68c07c066fa83f025024a  0.1s
 => => extracting sha256:6ac8cc1f0b52065d2132d052abc59bf19e19ac0c65729d4300ab41db30fed855  0.0s
 => [2/9] RUN mkdir -p /app                                                                0.5s
 => [3/9] WORKDIR /app                                                                     0.0s
 => [4/9] RUN npm install -g npm@latest                                                   10.8s
 => [5/9] RUN npm install -g corepack                                                      1.7s
 => [6/9] RUN yarn set version 4.4.1                                                       4.0s
 => [7/9] RUN apk update && apk add --no-cache vim curl python3 py3-pip make g++ bash gi  29.7s
 => [8/9] RUN python3 -m venv /opt/venv                                                    4.4s
 => [9/9] RUN pip3 install mkdocs-techdocs-core                                           26.3s
 => exporting to image                                                                    30.7s
 => => exporting layers                                                                   20.5s
 => => exporting manifest sha256:2e524e00e22b556cb0e34056f1e7c887abe08efad291889f22d715e2  0.0s
 => => exporting config sha256:2d61302460512897053aa2f61e27f9e66654047cffb093a70ca668af41  0.0s
 => => exporting attestation manifest sha256:99778ddbd7a07607d3de5aa03eddc3acefe5d666c4c7  0.0s
 => => exporting manifest list sha256:941f06fbd1d6669aa1aa796fcf3b6cada12c472688e521e4da1  0.0s
 => => naming to docker.io/library/alpine-backstage-build:0.0.1                             0.0s
 => => unpacking to docker.io/library/alpine-backstage-build:0.0.1                         10.1s
```

```bash
docker images
```

```bash result
IMAGE                                           ID             DISK USAGE   CONTENT SIZE   EXTRA
alpine-backstage-build:0.0.1                    941f06fbd1d6       1.12GB          279MB
....
```

</details>

* run the built image with mount point for /app of the container
   * we are in a directory without windows sharing
   * in this directory of the backstage sources and configuration will be created by "npx @backstage/create-app@latest" entry point command
   * we need bash and interactivity

```bash
docker run --name alpine-bckstg-src -it -v `pwd`/:/app -w /app alpine-backstage-build:0.0 bash
```

<details> <summary>results</summary>

```bash result
Need to install the following packages:
@backstage/create-app@0.7.7
Ok to proceed? (y)
```

* say : y


```bash result
npm warn deprecated boolean@3.2.0: Package no longer supported. Contact Support at https://www.npmjs.com/support for more info.
? Enter a name for the app [required] (backstage)
```

* say backstage

```bash result
? Enter a name for the app [required] backstage

Creating the app...

 Checking if the directory is available:
  checking      backstage ✔

 Creating a temporary app directory:

 Preparing files:
  copying       .dockerignore ✔
  copying       .eslintignore ✔
  templating    .eslintrc.js.hbs ✔
  templating    .gitignore.hbs ✔
  copying       .prettierignore ✔
  templating    .yarnrc.yml.hbs ✔
  copying       README.md ✔
  copying       app-config.local.yaml ✔
  copying       app-config.production.yaml ✔
  templating    app-config.yaml.hbs ✔
  templating    backstage.json.hbs ✔
  templating    catalog-info.yaml.hbs ✔
  templating    package.json.hbs ✔
  copying       playwright.config.ts ✔
  copying       tsconfig.json ✔
  copying       yarn.lock ✔
  copying       README.md ✔
  copying       yarn-4.4.1.cjs ✔
  copying       entities.yaml ✔
  copying       org.yaml ✔
  copying       template.yaml ✔
  copying       catalog-info.yaml ✔
  copying       index.js ✔
  copying       package.json ✔
  copying       README.md ✔
  templating    .eslintrc.js.hbs ✔
  copying       Dockerfile ✔
  copying       README.md ✔
  templating    package.json.hbs ✔
  copying       index.ts ✔
  copying       .eslintignore ✔
  templating    .eslintrc.js.hbs ✔
  templating    package.json.hbs ✔
  copying       app.test.ts ✔
  copying       android-chrome-192x192.png ✔
  copying       apple-touch-icon.png ✔
  copying       favicon-16x16.png ✔
  copying       favicon-32x32.png ✔
  copying       favicon.ico ✔
  copying       index.html ✔
  copying       manifest.json ✔
  copying       robots.txt ✔
  copying       safari-pinned-tab.svg ✔
  copying       App.test.tsx ✔
  copying       App.tsx ✔
  copying       apis.ts ✔
  copying       index.tsx ✔
  copying       setupTests.ts ✔
  copying       LogoFull.tsx ✔
  copying       LogoIcon.tsx ✔
  copying       Root.tsx ✔
  copying       index.ts ✔
  copying       EntityPage.tsx ✔
  copying       SearchPage.tsx ✔

 Moving to final location:
  moving        backstage ✔
  fetching      yarn.lock seed ✔

 Installing dependencies:
  executing     yarn install ◜
```

*it is very very long*

```bash result
  executing     yarn install ◡ ➤ YN0000: · Yarn 4.4.1
➤ YN0000: ┌ Resolution step
➤ YN0085: │ + @backstage/app-defaults@npm:1.7.3, @backstage/backend-defaults@npm:0.14.0, @backstage/catalog-model@npm:1.7.6, @backstage/cli@npm:0.35.0, and 2916 more.
➤ YN0000: └ Completed in 1m 18s
➤ YN0000: ┌ Post-resolution validation
➤ YN0060: │ @testing-library/react is listed by your project with version 14.3.1 (pc9eb9), which doesn't satisfy what @backstage/test-utils requests (^16.0.0).
➤ YN0060: │ react is listed by your project with version 18.3.1 (pd98da), which doesn't satisfy what @material-ui/core and other dependencies request (but they have non-overlapping ranges!).
➤ YN0060: │ react-dom is listed by your project with version 18.3.1 (pfa800), which doesn't satisfy what @material-ui/core and other dependencies request (but they have non-overlapping ranges!).
➤ YN0002: │ app@workspace:packages/app doesn't provide @types/react (pceee1), requested by @backstage/app-defaults and other dependencies.
➤ YN0002: │ app@workspace:packages/app doesn't provide jest (p99cdc), requested by @backstage/cli.
➤ YN0002: │ app@workspace:packages/app doesn't provide webpack (p299d9), requested by @backstage/cli.
➤ YN0002: │ backend@workspace:packages/backend doesn't provide jest (p35ee3), requested by @backstage/cli.
➤ YN0002: │ backend@workspace:packages/backend doesn't provide webpack (p00f29), requested by @backstage/cli.
➤ YN0002: │ root@workspace:. doesn't provide webpack (p40c38), requested by @backstage/cli.
➤ YN0086: │ Some peer dependencies are incorrectly met by your project; run yarn explain peer-requirements <hash> for details, where <hash> is the six-letter p-prefixed code.
➤ YN0086: │ Some peer dependencies are incorrectly met by dependencies; run yarn explain peer-requirements for details.
➤ YN0000: └ Completed
➤ YN0000: ┌ Fetch step
➤ YN0066: │ typescript@patch:typescript@npm%3A5.8.3#optional!builtin<compat/typescript>::version=5.8.3&hash=8c6c40: Cannot apply hunk #1
➤ YN0013: │ 2835 packages were added to the project (+ 1.04 GiB).
➤ YN0000: └ Completed in 52s 488ms
➤ YN0000: ┌ Link step
➤ YN0007: │ esbuild@npm:0.27.2 must be built because it never has been before or the last one failed
➤ YN0007: │ @swc/core@npm:1.11.31 [de5a4] must be built because it never has been before or the last one failed
➤ YN0007: │ core-js@npm:3.47.0 must be built because it never has been before or the last one failed
➤ YN0007: │ better-sqlite3@npm:12.5.0 must be built because it never has been before or the last one failed
➤ YN0007: │ isolated-vm@npm:6.0.2 must be built because it never has been before or the last one failed
➤ YN0007: │ unrs-resolver@npm:1.11.1 must be built because it never has been before or the last one failed
➤ YN0007: │ @scarf/scarf@npm:1.4.0 must be built because it never has been before or the last one failed
➤ YN0007: │ protobufjs@npm:7.5.4 must be built because it never has been before or the last one failed
➤ YN0007: │ core-js-pure@npm:3.47.0 must be built because it never has been before or the last one failed
➤ YN0007: │ tree-sitter@npm:0.22.4 must be built because it never has been before or the last one failed
➤ YN0007: │ tree-sitter@npm:0.21.1 must be built because it never has been before or the last one failed
➤ YN0007: │ core-js@npm:2.6.12 must be built because it never has been before or the last one failed
➤ YN0007: │ cpu-features@npm:0.0.10 must be built because it never has been before or the last one failed
➤ YN0009: │ isolated-vm@npm:6.0.2 couldn't be built successfully (exit code 1, logs can be found here: /tmp/xfs-4f46c3f0/build.log)
➤ YN0007: │ @tree-sitter-grammars/tree-sitter-yaml@npm:0.7.1 [63720] must be built because it never has been before or the last one failed
➤ YN0007: │ ssh2@npm:1.17.0 must be built because it never has been before or the last one failed
➤ YN0007: │ tree-sitter-json@npm:0.24.8 [0ca9a] must be built because it never has been before or the last one failed
➤ YN0000: └ Completed in 1m 24s
➤ YN0000: · Failed with errors in 3m 35s
  executing     yarn install ✖

Error: Could not execute command yarn install

It seems that something went wrong when creating the app 🤔

🔥  Failed to create app!
```

</details>

* We need to finish the installation inside the container 

```bash
docker run --name alpine-bckstg-it -it -v `pwd`/:/app -w /app --entrypoint '' alpine-backstage-base:0.0.0 bash
```

```bash inside the container alpine-bckstg-it
cd backstage; yarn install
```

* 🤔 We have inconsistency in packadges dependencies
* we need a node version > 22 (after research on internet)
* I use the node 24 alpine, got pb with corepack and found a resolution trick

```yaml
# Alpine Node for Backstage Image Build
FROM node:24-alpine

# Create and use /app
RUN mkdir -p /app
WORKDIR /app

# Update npm, intall corepack
RUN npm install -g npm@latest
RUN npm uninstall -g yarn pnpm
RUN npm install -g corepack

# Set yarn version 4.4.1
RUN npm install yarn
RUN yarn set version 4.4.1
RUN apk update && apk add --no-cache vim curl python3 py3-pip make g++ bash github-cli
# Change the shell
SHELL ["/bin/bash", "-c"]

# Adding python venv for mkdocs techdocs
ENV VIRTUAL_ENV=/opt/venv
RUN python3 -m venv $VIRTUAL_ENV
ENV PATH="$VIRTUAL_ENV/bin:$PATH"

# Adding mkdocs-techdoc
RUN pip3 install mkdocs-techdocs-core

# Set the entrypoint for backstage installation at run
# will need mount point for /app outside windows
ENTRYPOINT npx @backstage/create-app@latest

LABEL img=alpine-backstage-build description="image for local backstage build" version="0.0.2"
```

* I clean old stuff

```bash
cd ~/backstage-app; rm -rf backstage
docker rm alpine-bckstg-it  alpine-bckstg-src; docker image rm alpine-backstage-build:0.0.1
```

* I build again
* I run interactive (it) alpine-bckstg-src alpine npde 24 container, with local mount and bash 

```bash
docker build -f Dockerfile-build -t alpine-backstage-build:0.0.2 .
docker run --name alpine-bckstg-src -it -v `pwd`/:/app -w /app alpine-backstage-build:0.0.2 bash
```

<details> <summary>results</summary>

```bash result
Need to install the following packages:
@backstage/create-app@0.7.7
Ok to proceed? (y) y
npm warn deprecated boolean@3.2.0: Package no longer supported. Contact Support at https://www.npmjs.com/support for more info.
? Enter a name for the app [required] backstage

Creating the app...

 Checking if the directory is available:
  checking      backstage ✔

 Creating a temporary app directory:

 Preparing files:
  copying       .dockerignore ✔
  copying       .eslintignore ✔
  templating    .eslintrc.js.hbs ✔
  templating    .gitignore.hbs ✔
  copying       .prettierignore ✔
  templating    .yarnrc.yml.hbs ✔
  copying       README.md ✔
  copying       app-config.local.yaml ✔
  copying       app-config.production.yaml ✔
  templating    app-config.yaml.hbs ✔
  templating    backstage.json.hbs ✔
  templating    catalog-info.yaml.hbs ✔
  templating    package.json.hbs ✔
  copying       playwright.config.ts ✔
  copying       tsconfig.json ✔
  copying       yarn.lock ✔
  copying       README.md ✔
  copying       yarn-4.4.1.cjs ✔
  copying       entities.yaml ✔
  copying       org.yaml ✔
  copying       template.yaml ✔
  copying       catalog-info.yaml ✔
  copying       index.js ✔
  copying       package.json ✔
  copying       README.md ✔
  templating    .eslintrc.js.hbs ✔
  copying       Dockerfile ✔
  copying       README.md ✔
  templating    package.json.hbs ✔
  copying       index.ts ✔
  copying       .eslintignore ✔
  templating    .eslintrc.js.hbs ✔
  templating    package.json.hbs ✔
  copying       android-chrome-192x192.png ✔
  copying       apple-touch-icon.png ✔
  copying       favicon-16x16.png ✔
  copying       favicon-32x32.png ✔
  copying       favicon.ico ✔
  copying       index.html ✔
  copying       manifest.json ✔
  copying       robots.txt ✔
  copying       safari-pinned-tab.svg ✔
  copying       app.test.ts ✔
  copying       App.test.tsx ✔
  copying       App.tsx ✔
  copying       apis.ts ✔
  copying       index.tsx ✔
  copying       setupTests.ts ✔
  copying       LogoFull.tsx ✔
  copying       LogoIcon.tsx ✔
  copying       Root.tsx ✔
  copying       index.ts ✔
  copying       EntityPage.tsx ✔
  copying       SearchPage.tsx ✔

 Moving to final location:
  moving        backstage ✔
  fetching      yarn.lock seed ✔

 Installing dependencies:
  executing     yarn install ✔
  executing     yarn tsc ✔

🥇  Successfully created backstage


 All set! Now you might want to:
  Run the app: cd backstage && yarn start
  Set up the software catalog: https://backstage.io/docs/features/software-catalog/configuration
  Add authentication: https://backstage.io/docs/auth/
```

* the backstage directory is created inside the container in /app/backstage
* it is also created inside the host in ~/backstage-app/backstage (where we mounted the volume)
* in this directory we have all the code and the default configuration  

</details>

##### Dockerfile for configuration, start and publish backstage  

* The Dockerfile-bckstg
   * use previous image alpine-backstage-build in his from (we could flatten the image before) 
   * use env vars to authenticate and configure the curl url
   * define the needed exposed ports to publish at run
   * use mounted backstage sources and default configurations
   * add plugins for auth and tech docs  
   * overwrites the needed configurations using curl (we pushed our configuration on a remote git repository)
   * set backstage yarn start has entry point
   * set the default local configuration as cmd

```yaml  Dockerfile-bckstg
# we use our backstage building image
FROM alpine-backstage-build:0.0.2
# we use arg vars
ARG AUTH_GITHUB_CLIENT_ID=$AUTH_GITHUB_CLIENT_ID
ARG AUTH_GITHUB_CLIENT_SECRET=$AUTH_GITHUB_CLIENT_SECRET
ARG BURL=$BURL
# we explain what ports need to be exposed
EXPOSE 3000
EXPOSE 7007

# Get in backstage directory
WORKDIR /app/backstage

# Add auth and techdocs plugins
RUN yarn --cwd packages/backend add @backstage/plugin-auth-backend-module-github-provider
RUN yarn --cwd packages/app add @backstage/plugin-techdocs
RUN yarn --cwd packages/backend add @backstage/plugin-techdocs-backend

# Overwrite configurations
RUN curl --create-dirs --user $AUTH_GITHUB_CLIENT:$AUTH_GITHUB_CLIENT_SECRET $BURL/catalog/entities/users.yaml -o catalog/entities/users.yaml
RUN curl --create-dirs --user $AUTH_GITHUB_CLIENT:$AUTH_GITHUB_CLIENT_SECRET $BURL/app-config.local.yaml -o app-config.local.yaml
RUN curl --create-dirs --user $AUTH_GITHUB_CLIENT:$AUTH_GITHUB_CLIENT_SECRET $BURL/packages/backend/src/index.ts -o packages/backend/src/index.ts
RUN curl --create-dirs --user $AUTH_GITHUB_CLIENT:$AUTH_GITHUB_CLIENT_SECRET $BURL/packages/app/src/App.tsx -o packages/app/src/App.tsx
RUN curl --create-dirs --user $AUTH_GITHUB_CLIENT:$AUTH_GITHUB_CLIENT_SECRET $BURL/catalog/entities/groups.yaml -o catalog/entities/groups.yaml

# Set backstage yarn start entry point, with local configuration
ENTRYPOINT ["/usr/local/bin/yarn", "start"]
CMD -- --config /app/backstage/app-config.local.yaml

LABEL img=alpine-backstage-run description="image for running local backstage" version="0.0.0"
```

* build image with vars and secrets stored in .env :/ as build-args
* tag is alpine-backstage-build:0.0.0
* use Dockerfile-bckstg

```bash
source .env # got necessary env vars  BCKSTG_CONFIGS_URL AUTH_GITHUB_CLIENT_ID AUTH_GITHUB_CLIENT_SECRET
```

```bash
docker build -f Dockerfile-bckstg -t alpine-backstage-run:0.0.0 --build-arg AUTH_GITHUB_CLIENT_ID=$AUTH_GITHUB_CLIENT_ID --build-arg AUTH_GITHUB_CLIENT_SECRET=$AUTH_GITHUB_CLIENT_SECRET --build-arg BCKSTG_CONFIGS_URL=$BCKSTG_CONFIGS_URL .
```

* we will need a better system for the secrets 
* run ephemeral alpine-backstage-build:0.0.0 image as bckstg-run, with env vars, tty interactivity, plublished ports and mounted volume 

```bash
docker run --rm --name bckstg-run -e AUTH_GITHUB_CLIENT_ID=$AUTH_GITHUB_CLIENT_ID -e AUTH_GITHUB_CLIENT_SECRET=$AUTH_GITHUB_CLIENT_SECRET -it -p 3000:3000 -p 7007:7007 -v `pwd`/:/app -w /app alpine-backstage-run:0.0.0 bash
```

## Backstage Software Templates

* add

```bash
```

<details> <summary>results</summary>

```bash result
```
</details>

### Intro to Backstage Software Templates

* add

```bash
```

<details> <summary>results</summary>

```bash result
```
</details>

### Quick Démo

* add

```bash
```

<details> <summary>results</summary>

```bash result
```
</details>

### Install & Configure Backstage Actions

* add

```bash
```

<details> <summary>results</summary>

```bash result
```
</details>

### Integrate with GitHub

* add

```bash

```

<details> <summary>results</summary>


```bash result
```
</details>

### Create a GitHub repo for Backstage Software Templates

* add

```bash

```

<details> <summary>results</summary>

```bash result
```

</details>

### Explore parameters

* add

```bash

```

<details> <summary>results</summary>

```bash result
```

</details>

### Backstage Software Templates Steps

* add

```bash

```

<details> <summary>results</summary>

```bash result
```

</details>

### Catalog_info.yaml file

* add

```bash

```

<details> <summary>results</summary>

```bash result
```

</details>

### Deploy a tiny component

* add

```bash

```

<details> <summary>results</summary>

```bash result
```

</details>

### Try our previous devop project into a Backstage Software template

* add

```bash

```

<details> <summary>results</summary>

```bash result
```

</details>

### Rewrite it as Backstage Template

* add

```bash

```

<details> <summary>results</summary>

```bash result
```

</details>

### Render it

* add

```bash

```

<details> <summary>results</summary>

```bash result
```

</details>

### Configure GitHub Organizations & distrubuted builds

* add

```bash

```

<details> <summary>results</summary>

```bash result
```

</details>

### Tweak repo properties from Backstage Actions

....

* add

```bash

```

<details> <summary>results</summary>

```bash result
```

</details>

## Backstage Production mode

* add

```bash

```

<details> <summary>results</summary>

```bash result

```

</details>

## Backstage on k8s

## Final Quiz

----------------cmd template
#### Sample

* add

```bash
```

<details> <summary>results</summary>

```bash result
```
</details>
