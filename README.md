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

### Github OAuth Authentication Config

### Backstage Plugins

### Backstage Resolvers

### Test Authentication


## Backstage Software Catalog

### What is Backstage Software Catalog ?
### External components
### Group Enties Congig
### Register external components into the Backstage Catalog

## Backstage TechDocs

### What are TechDocs ?
### Write Code Doc with Backstage
### Install & Configure Backstage TechDocs

## Backstage Software Templates

### Intro to Backstage Software Templates
### Quick Démo
### Install & Configure Backstage Actions
### Integrate with GitHub
### Create a GitHub repo for Backstage Software Templates
### Explore parameters
### Backstage Software Templates Steps
### Catalog_info.yaml file
### Deploy a tiny component
### Tryy our previous devop project into a Backstage Software template
### Rewrite it as Backstage Template
### Render it
### Configure GitHub Organizations & distrubuted builds
### Tweak repo properties from Backstage Actions
....


## Backstage Production mode

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
