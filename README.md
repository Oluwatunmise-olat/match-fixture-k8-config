# Match Fixture Helm Chart

This repository contains the Helm chart for deploying the **Match Fixture** application on Kubernetes. The chart allows for easy configuration of environment variables and integration with MongoDB, Redis, and other services.

## Installation

1. **Add Environment Variables**

   Create a file named `env.yaml` with the required environment variables in the following format:

   ```yaml
   env:
     - name: NODE_ENV
       value: production
     - name: APP_KEY
       value: "<your-app-key>"
     - name: MONGO_URI
       value: "<your-mongo-uri>"
     - name: APP_VERSION
       value: v1
     - name: REDIS_URL
       value: "<your-redis-url>"
   ```

2. **Install the Helm Chart**

   Use the following command to install the chart:

   ```bash
   helm install <releaseName> match_fixture -f env.yaml
   ```

   Replace `<releaseName>` with your preferred release name.

---

## Pulling the Helm Chart from Docker Hub

The Helm chart is hosted on Docker Hub as an OCI artifact.

1. **Login to Docker Hub**:

   ```bash
   helm registry login docker.io
   ```
   Enter your Docker Hub username and password when prompted.

2. **Pull the Helm Chart**:

   ```bash
   helm pull oci://registry-1.docker.io/oluwatunmiseolat/match-fixture-k8 --version <chart-version>
   ```

   Replace `<chart-version>` with the desired version of the Helm chart.

---

## Uninstalling the Helm Chart

To uninstall the Helm release:

```bash
helm uninstall <releaseName>
```

Replace `<releaseName>` with the release name you used during installation.

---

## Configuration

The following environment variables are required:

| Name          | Description                | Example              |
|---------------|----------------------------|----------------------|
| NODE_ENV      | Application environment    | `production`         |
| APP_KEY       | Application secret key     | `your-app-key`      |
| MONGO_URI     | MongoDB connection string | `mongodb://...`     |
| APP_VERSION   | Application version        | `v1`                |
| REDIS_URL     | Redis connection string    | `redis://...`       |
