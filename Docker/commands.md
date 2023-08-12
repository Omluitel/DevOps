## Docker Commands Step-by-Step

#### Pull an Image from Docker Hub:
```
docker pull IMAGE_NAME:TAG
```

For example, to pull the latest version of the official Ubuntu image, you would use:

```
docker pull ubuntu
```
To pull a specific version of the Ubuntu image, you could use:
```
docker pull ubuntu:20.04
```
After you enter the docker pull command, Docker will start downloading the specified image from Docker Hub. The image is downloaded as layers, which are then extracted on your local system. The time taken depends on your internet speed and the image size.
##

#### Viewing Pulled Images:
To view the images you've pulled, you can use the docker images command. This command will display a list of locally available images, including their names, tags, sizes, and creation dates.
```
docker images
```
##
#### Run a Container from an Image:

```
docker run -d --name CONTAINER_NAME IMAGE_NAME:TAG
```

##### docker run: 
Start a new container.

##### -d: 
Run the container in the background. This allows you to use your terminal for other tasks without interruption.

##### --name CONTAINER_NAME: 
Give a name to the container for easy management, especially when dealing with multiple containers.

##### IMAGE_NAME:TAG: 
Specify the Docker image you want to use. Replace IMAGE_NAME with the image's name and TAG with its version or label. If you don't specify a tag, Docker assumes the latest version.
##
#### List Running Containers:
```
docker ps
```
#### List All Containers (including stopped):
```
docker ps -a
```

#### Stop a Container:
```
docker stop container_name_or_id
```
#### Start a Stopped Container:
```
docker start container_name_or_id
```
#### Restart a Container:
```
docker restart container_name_or_id
```


#### Attach to a Running Container's Shell:
 ```
 docker exec -it container_name_or_id /bin/bash
 ```

#### View Container Logs:
 ```
 docker logs container_name_or_id
 ```

#### Remove a Container:
 ```
 docker rm container_name_or_id
 ```

#### Remove an Image:
 ```
 docker rmi image_name:tag
 ```

## Building and Networks

#### Build a Docker Image from a Dockerfile:
 ```
 docker build -t image_name:tag path_to_dockerfile_directory
 ```

#### Create a Docker Network:
 ```
 docker network create network_name
 ```

#### Run a Container with a Specific Network:
 ```
 docker run -d --name container_name --network network_name image_name:tag
 ```

## Inspecting and Cleaning Up

#### Inspect Container or Image:
 ```
 docker inspect container_or_image_name_or_id
 ```

#### Clean Up (Remove All Stopped Containers, Unused Networks, and Dangling Images):
 ```
 docker system prune
 ```





