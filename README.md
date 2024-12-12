## CI with GitHub Actions

The repository includes a GitHub Actions workflow that:

1. Builds the Docker images for both the frontend and backend.
2. Pushes the images to **GitHub Container Registry (GHCR)**.

### Steps to Configure

1. **Enable GHCR Access**:
   Ensure GHCR is enabled for your repository.

2. **Set up Secrets**:
   Add the following secrets to your repository:
   - `GHCR_PAT`: A personal access token with `write:packages` and `read:packages` permissions.

3. **Trigger the Workflow**:
   Push changes to the `master` branch to trigger the workflow.