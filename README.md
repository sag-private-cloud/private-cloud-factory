# Status of private-cloud-factory
![CI/CD](https://github.com/sag-private-cloud/private-cloud-factory/actions/workflows/cicd.yml/badge.svg)

# General information
A template repository for kick-starting Private Cloud CI/CD creation for Software AG products. 

# Prerequisites
- :package: Container registry for pushing your customized image(s)
- :cloud: Kubernetes cluster for deploying your solution(s), supporting Docker in Docker
- :arrow_forward: GitHub runner(s) with Docker and Helm installed for running the CI/CD process on
- :key: Define the following secrets for accessing the **Software AG** services:
  - SAG_CR_USER (secret) - Username for https://containers.softwareag.com/
  - SAG_CR_PASSWORD (secret) - Password/token for https://containers.softwareag.com/
  - SAG_WPM_TOKEN (secret) - Token for https://packages.softwareag.com/
- :key: Define the following secrets/vars for accessing **your organization** services:
  - DOCKER_REGISTRY (var) - Your container registry server
  - DOCKER_USER (secret) - Username for your container registry
  - DOCKER_PASSWORD (secret) - Password/token for your container registry

# Usage
- Use the template by clicking "Use this template" at the top and specify the new repository name
- (Optional) Modify the ./github/workflows/cicd.yml if you need container or deployment specifics:
  - The env/PACKAGES value with the list of Software AG packages that you need on top of the base runtime
  - The application properties
