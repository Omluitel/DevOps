# NGINX Web Application Docker Image

This Dockerfile creates a Docker image for serving a web application using NGINX.

## Dockerfile Explanation

This Dockerfile sets up an NGINX web server within a Docker container to serve a web application. Here's a breakdown of the Dockerfile's commands:

```dockerfile
# Use the official NGINX base image
FROM nginx:latest

# Change to the /tmp/ directory and download a ZIP template
WORKDIR /tmp/
RUN apt-get update && apt-get install -y wget unzip && rm -rf /var/lib/apt/lists/*
RUN wget https://www.tooplate.com/zip-templates/2079_garage.zip

# Unzip the downloaded ZIP file and copy its contents to the NGINX web root
RUN unzip -o 2079_garage.zip
RUN cp -r 2079_garage/* /usr/share/nginx/html/

# Clean up
RUN rm -rf /tmp/2079_garage.zip /tmp/2079_garage

# Expose port 80 (default HTTP port)
EXPOSE 80

# The NGINX container runs by default, so no need to start it explicitly.


```


## Build the Docker image
```
docker build -t static_website_docker_image .
```