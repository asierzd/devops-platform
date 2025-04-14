# DevOps Platform

This repository contains a DevOps platform designed to streamline the deployment and management of applications using modern tools and practices. The platform integrates Minikube, ArgoCD, and GitHub Actions to provide a complete CI/CD pipeline and infrastructure automation.

## Features

- **Minikube**: Scripts to install, start, stop, and delete a local Kubernetes cluster for development and testing.
- **ArgoCD**: Configuration and deployment scripts for GitOps-based continuous delivery.
- **GitHub Actions**: Automated workflows for building and deploying Docker images.
- **GitHub Runner**: Custom GitHub Actions runners deployed using the Actions Runner Controller.
- **Docker**: Dockerfile for building containerized applications.
- **GitOps**: Integration with a GitOps repository for managing application state.

## Project Structure

- **`argocd/`**: Contains ArgoCD configuration files and deployment scripts.
- **`github_runner/`**: Scripts and configurations for deploying GitHub Actions runners.
- **`minikube/`**: Scripts for managing a local Minikube cluster.
- **`project/`**: Application code and Dockerfile for building the container image.
- **`.github/workflows/`**: GitHub Actions workflows for CI/CD.

## Getting Started

1. **Set Up Environment**:
   - Configure the `.env` file with your GitHub Personal Access Token (PAT).

2. **Deploy Minikube**:
   - Use the scripts in the `minikube/` directory to install and start Minikube.

3. **Deploy ArgoCD**:
   - Run the `deploy.sh` script in the `argocd/` directory to set up ArgoCD.

4. **Run GitHub Actions**:
   - Use the workflows in `.github/workflows/` to automate builds and deployments.

5. **Test Application**:
   - Access the sample application in `project/test/index.html` to verify the deployment.

## Prerequisites

- Docker
- Kubernetes CLI (`kubectl`)
- Helm
- Minikube
- GitHub Personal Access Token (PAT)

## License

This project is licensed under the MIT License. See the `LICENSE` file for details.