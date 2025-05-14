# cVation-intro-repo

A test repository to go through all i have learned through the last couple of weeks.

The repository should end up containing:

- Docker image
- Terraform creating necessary resources in Azure
- GitHub Actions
  - Build necessary resources in Azure with Terraform
  - Build and Deploy Docker image to Azure
  - Test Docker image with Trivy and show report in security tab

Further expansion of the project should be

- Add dummy project to the docker container
- Deploy dummy project to Azure
- Enable DependaBot
- Enable other security measures

## Repository status

[![Super-Linter](https://github.com/Tha-cVation/cvation-intro-repo/actions/workflows/check-linting.yml/badge.svg)](https://github.com/marketplace/actions/super-linter)

## Docker Getting Started Tutorial

This tutorial was written with the intent of helping folks get up and running
with containers and is designed to work with Docker Desktop. While not going too much
into depth, it covers the following topics:

- Running your first container
- Building containers
- Learning what containers are
- Running and removing containers
- Using volumes to persist data
- Using bind mounts to support development
- Using container networking to support multi-container applications
- Using Docker Compose to simplify the definition and sharing of applications
- Using image layer caching to speed up builds and reduce push/pull size
- Using multi-stage builds to separate build-time and runtime dependencies

### Getting Started

If you wish to run the tutorial, you can use the following command after installing Docker Desktop:

```bash
docker run -d -p 80:80 docker/getting-started
```

Once it has started, you can open your browser to [http://localhost](http://localhost).

### Development

This project has a `docker-compose.yml` file, which will start the mkdocs application on your
local machine and help you see changes instantly.

```bash
docker compose up
```
