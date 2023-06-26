# to build an app using a Dockerfile
docker build Dockerfile -t alex/myapp

# To push an image to docker hub
docker push alex/myapp

# for getting information about the layers on the app
docker history alex/myapp

# List docker running
docker ps

# List local images
docker images

# Run nginx and expose port 8080 (container) to 8282 (host)
docker run nginx:latest -p 8282:8080

# Run a python container
docker run python:3.6

# Podman
podman run -d --name <container-name> <registry>/<image>:<tag>

# logs
podman logs <container-name>