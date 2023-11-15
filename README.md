# Status of private-cloud-factory
![CI/CD](https://github.com/sag-private-cloud/private-cloud-factory/actions/workflows/main.yml/badge.svg)

# General information
A template repository for kick-starting Private Cloud CI/CD creation for Software AG products. 

# Prerequisites
- Container registry for pushing your customized image(s)
- Kubernetes cluster for deploying your solution(s), supporting Docker in Docker
- GitHub runner(s) with Docker and Helm installed for running the CI/CD process on
- Define the following secrets for accessing the **Software AG** services:
  - SAG_CR_USER (secret) - Username for https://containers.softwareag.com/
  - SAG_CR_PASSWORD (secret) - Password/token for https://containers.softwareag.com/
  - SAG_WPM_TOKEN (secret) - Token for https://packages.softwareag.com/
- Define the following secrets/vars for accessing **your organization** services:
  - DOCKER_REGISTRY (var) - Your container registry server
  - DOCKER_USER (secret) - Username for your container registry
  - DOCKER_PASSWORD (secret) - Password/token for your container registry
