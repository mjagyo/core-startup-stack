# Core Startup Stack Deployment with Terraform

This repository is heavily inspired by this architecture [blog](https://learn.microsoft.com/en-us/azure/architecture/example-scenario/startups/core-startup-stack).

This repository provides a Terraform script to deploy a simple and scalable core startup stack, tailored for startups in the initial stages of product development. The focus is on fast deployment, cost-efficiency, and flexibility (optionality). This setup is perfect for startups aiming to quickly deploy their product without dealing with complex architectures and infrastructure management.

### Purpose

The goal of this repository is to deploy a simple monolithic architecture, suitable for a startup that hasn't yet reached product/market fit but needs to launch quickly for initial user feedback. The stack is designed to minimize operational overhead while providing the ability to scale as the product grows.


## Architecture Overview

The stack includes the following components:
- **Azure App Service**: Deploy scalable applications without configuring servers, load balancers, or other infrastructure.
- **Azure Database for PostgreSQL**: Managed database service for a reliable open-source relational database
- **GitHub Actions**: Continuous Integration and Continuous Deployment (CI/CD) for automated builds and deployments.
- **Azure Blob Storage**: Stores static assets, reducing load on app servers

This architecture is suitable for most startups in the explore phase, allowing them to focus on building the product rather than managing complex infrastructure.

## Key Features

- **Minimal Operational Overhead**: The monolithic design ensures you don't need to manage complex microservices or services.
- **Scalable**: Azure App Service and the database can scale as your customer base grows.
- **Simple CI/CD**: Using GitHub Actions for continuous integration and deployment allows for rapid iteration.
- **Cost-Effective**: The setup is designed to minimize costs while providing the necessary resources for an early-stage startup.

### Components of the Core Startup Stack
1. **App Server** - The app server runs your code in a PaaS environment (Azure App Service), removing the need for manual server management. It supports scalable and container-based deployments.
2. **Static Content** - Azure Blob Storage is used for serving static assets, offloading the app server and improving performance.
3. **Database** - Azure Database for PostgreSQL is used as a relational database service to store application data securely and efficiently.
4. **CI/CD Pipeline** - GitHub Actions automates your build and deployment processes. Once your code is committed, it triggers a pipeline that deploys your app to Azure App Service.

### Prerequisites
- An Azure account.
- Terraform installed on your local machine.
- GitHub account with access to GitHub Actions.
- Basic knowledge of Terraform, Azure services, and GitHub Actions.






