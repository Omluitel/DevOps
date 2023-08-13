## Docker Commands Step-by-Step

### Basic Docker Commands

| Command | Description | Example |
|---------|-------------|---------|
| `docker container run IMAGE_NAME:TAG` | Run a container from an image | `docker container run ubuntu:latest` |
| `docker container ls` | List all running containers | `docker container ls` |
| `docker container ls -a` | List all containers (including stopped) | `docker container ls -a` |
| `docker container stop CONTAINER_NAME_OR_ID` | Stop a running container | `docker container stop mycontainer` |
| `docker container start CONTAINER_NAME_OR_ID` | Start a stopped container | `docker container start mycontainer` |
| `docker container restart CONTAINER_NAME_OR_ID` | Restart a running container | `docker container restart mycontainer` |
| `docker container exec -it CONTAINER_NAME_OR_ID COMMAND` | Execute a command in a running container interactively | `docker container exec -it mycontainer bash` |
| `docker container logs CONTAINER_NAME_OR_ID` | View the logs of a container | `docker container logs mycontainer` |
| `docker container rm CONTAINER_NAME_OR_ID` | Remove a container | `docker container rm mycontainer` |


### Container Management

| Command | Description | Example |
|---------|-------------|---------|
| `docker container ls` | List all running containers | `docker container ls` |
| `docker container ls -a` | List all containers (including stopped) | `docker container ls -a` |
| `docker container stop CONTAINER_NAME_OR_ID` | Stop a running container | `docker container stop mycontainer` |
| `docker container start CONTAINER_NAME_OR_ID` | Start a stopped container | `docker container start mycontainer` |
| `docker container restart CONTAINER_NAME_OR_ID` | Restart a running container | `docker container restart mycontainer` |
| `docker container exec -it CONTAINER_NAME_OR_ID COMMAND` | Execute a command in a running container interactively | `docker container exec -it mycontainer bash` |
| `docker container logs CONTAINER_NAME_OR_ID` | View the logs of a container | `docker container logs mycontainer` |
| `docker container rm CONTAINER_NAME_OR_ID` | Remove a container | `docker container rm mycontainer` |


### Networks

| Command | Description | Example |
|---------|-------------|---------|
| `docker network ls` | List all networks on the system | `docker network ls` |
| `docker network create NETWORK_NAME` | Create a new network | `docker network create mynetwork` |
| `docker network inspect NETWORK_NAME` | Display detailed information about a network | `docker network inspect mynetwork` |
| `docker network connect NETWORK_NAME CONTAINER_NAME` | Connect a container to a network | `docker network connect mynetwork mycontainer` |
| `docker network disconnect NETWORK_NAME CONTAINER_NAME` | Disconnect a container from a network | `docker network disconnect mynetwork mycontainer` |
| `docker network prune` | Remove all unused networks | `docker network prune` |


### create network and attached to container

| Step | Command | Description | Example |
|------|---------|-------------|---------|
| 1. | `docker network create NETWORK_NAME` | Create a new network | `docker network create mynetwork` |
| 2. | `docker container run -d --name CONTAINER_NAME --network NETWORK_NAME IMAGE_NAME:TAG` | Run a container connected to the new network | `docker container run -d --name mycontainer --network mynetwork nginx:latest` |
| 3. | `docker network ls` | List all networks on the system | `docker network ls` |
| 4. | `docker network inspect NETWORK_NAME` | Display detailed information about a network | `docker network inspect mynetwork` |
| 5. | `docker network connect NETWORK_NAME CONTAINER_NAME` | Connect a container to a network | `docker network connect mynetwork mycontainer` |
| 6. | `docker network disconnect NETWORK_NAME CONTAINER_NAME` | Disconnect a container from a network | `docker network disconnect mynetwork mycontainer` |
| 7. | `docker network prune` | Remove all unused networks | `docker network prune` |


### Inspecting and Cleaning Up

| Command | Description | Example |
|---------|-------------|---------|
| `docker inspect CONTAINER_OR_IMAGE_ID_OR_NAME` | Inspect detailed information about a container or image | `docker inspect mycontainer` |
| `docker system prune` | Remove stopped containers, unused networks, and dangling images | `docker system prune` |

### Inspecting | logs | update
| Command | Description | Example |
|---------|-------------|---------|
| `docker container logs CONTAINER_ID_OR_NAME` | View logs of a container | `docker container logs mycontainer` |
| `docker container inspect CONTAINER_ID_OR_NAME` | Inspect detailed information about a container | `docker container inspect mycontainer` |
| `docker container update --restart=POLICY CONTAINER_NAME` | Update container restart policy | `docker container update --restart=always mycontainer` |
| `docker container stats CONTAINER_ID_OR_NAME` | Monitor real-time resource usage statistics | `docker container stats mycontainer` |
| `docker container top CONTAINER_ID_OR_NAME` | Display running processes in a container | `docker container top mycontainer` |
| `docker container exec -it CONTAINER_ID_OR_NAME COMMAND` | Execute command interactively within a container | `docker container exec -it mycontainer bash` |
| `docker container cp SOURCE_PATH CONTAINER_ID_OR_NAME:DEST_PATH` | Copy files between host and container | `docker container cp ./file.txt mycontainer:/app` |

