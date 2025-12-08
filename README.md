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
cd ~ # we are not in shared windows directory
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
apk add --no-cache vim curl python3 py3-pip make g++ bash
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
cd backstage; yarn start
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

```bash
docker run --rm -it -p 3000:3000 -p 7007:7007 -v `pwd`:/app -w /app backstage:v0
```


```bash
vim 
```

### Backstage Plugins

* add

```bash
```

<details> <summary>results</summary>

```bash result
```
</details>

### Backstage Resolvers

* add

```bash
```

<details> <summary>results</summary>

```bash result
```
</details>

### Test Authentication

* add

```bash
```

<details> <summary>results</summary>

```bash result
```
</details>

## Backstage Software Catalog

* add

```bash
```

<details> <summary>results</summary>

```bash result
```
</details>

### What is Backstage Software Catalog ?

* add

```bash
```

<details> <summary>results</summary>

```bash result
```
</details>

### External components

* add

```bash
```

<details> <summary>results</summary>

```bash result
```
</details>

### Group Enties Congig

* add

```bash
```

<details> <summary>results</summary>

```bash result
```
</details>

### Register external components into the Backstage Catalog

* add

```bash
```

<details> <summary>results</summary>

```bash result
```
</details>

## Backstage TechDocs

* add

```bash
```

<details> <summary>results</summary>

```bash result
```
</details>

### What are TechDocs ?

* add

```bash
```

<details> <summary>results</summary>

```bash result
```
</details>

### Write Code Doc with Backstage

* add

```bash
```

<details> <summary>results</summary>

```bash result
```
</details>

### Install & Configure Backstage TechDocs

* add

```bash
```

<details> <summary>results</summary>

```bash result
```
</details>

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
