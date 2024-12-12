# Containerization with Podman 

This project is integrated with Continuous Integration (CI) using **Podman** to automate container builds. Podman is a daemonless container engine that provides a fully compatible experience for managing containers and images.

## CI with Podman

The project leverages Podman for container management in the CI pipeline. The CI setup automates the following tasks:

- **Build** container images with Podman.
- **Push** container images to the GitHub Container Registry (GHCR).

### CI Pipeline Overview

- **Podman** is used to build, manage, and run containers in the CI environment.
- The CI configuration ensures that container images are built and pushed to GitHub Container Registry (GHCR) when changes are made to the codebase.

### How CI with Podman Works

1. **Build**: Podman is used to build the container image from the `Containerfile`
2. **Push**: On successful build, the container image is pushed to the GitHub Container Registry (GHCR).
3. **Deploy**: The container image can then be deployed to various environments.