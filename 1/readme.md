# Docker

## What is docker ?
- Docker lets you **build, test, and deploy** applications quickly.
- Docker is an open source platform for building, deploying, and managing containerized applications. 

## Core Concepts

### Contenedor
A container is a standard unit of software that packages up code and all its dependencies so the application runs quickly and reliably from one computing environment to another.

### Image
A container image is a lightweight, standalone, executable package of software that includes everything needed to run an application: code, runtime, system tools, system libraries and settings. **Container images become containers at runtime**.

#### Image name
An image is created follow the next pattern \<image_name\>:\<tag\>. Where image is an image name and tag is commonly the app version and specific configurations. E.g.

- budget/front:0.1.0
- budget/back:0.1.2
- budget/back:0.1.2-node10

### Dockerfile
A Dockerfile is a text document that contains all the commands a user could call on the command line to assemble an image.

### Container Registry
A container registry is a storage and distribution system for container images. The most used public repository is https://hub.docker.com/ but you can also deploy your local repository in your datacenter.

## Useful commands

Build a container image
```
docker build -t <image_name>:<tag> -f <docker_file> .
```

Download an image from the Registry
```
docker pull <image_name>:<tag>
```

List all containers
```
docker ps -a
```

List all images
```
docker image ls
```

Start a container
```
docker run -d -p 8888:80 -e MY_VAR=HELLO <image_name>
```

Enter to a container
```
docker exec -it <cotainer_id> /bin/bash
```

Get container logs
```
docker logs -f <cotainer_id>
```

## Links
Install:
- https://docs.docker.com/desktop/windows/install/
- https://docs.docker.com/engine/install/ubuntu/

Key Concepts:
- https://www.docker.com/resources/what-container
- https://docs.docker.com/get-started/overview/

Docs:
- https://docs.docker.com/reference/
- https://docs.docker.com/engine/reference/commandline/cli/
- https://docs.docker.com/engine/reference/builder/

Docker alternatives:
- https://linuxcontainers.org/
- https://podman.io/
- https://cri-o.io/

Others:
- https://containerd.io/
- https://hub.docker.com/