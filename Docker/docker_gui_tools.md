## Install Portainer Container:
Portainer is an open-source GUI (Graphical User Interface) tool that simplifies the management of Docker containers, images, volumes, networks, and more. It provides an intuitive web-based interface that makes it easier for users to interact with Docker without needing to use complex command-line commands. With Portainer, you can manage Docker resources, view container logs, access statistics, and even create and manage Docker stacks and services.

Portainer is particularly useful for those who are new to Docker or prefer a graphical interface for managing containers and Docker-related tasks. It supports both standalone Docker installations and Docker Swarm clusters, making it versatile for various use cases.

Run the following Docker command to start a Portainer container:
```
docker volume create portainer_data
docker run -d -p 9000:9000 --name=portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer
```
Explanation of the flags used in the command:

-d: Run the container in detached mode.

-p 9000:9000: Map port 9000 on the host to port 9000 in the container.

--name=portainer: Assign the name "portainer" to the container.

--restart=always: Ensure that the container restarts automatically if the host reboots or if the container stops unexpectedly.

-v /var/run/docker.sock:/var/run/docker.sock: Mount the Docker socket inside the container, allowing Portainer to communicate with the Docker daemon.

-v portainer_data:/data: Mount a named volume to persist Portainer's data.

## Access Portainer UI:
After the container is running, open a web browser and navigate to http://localhost:9000. You should see the Portainer setup 

## Set Up Portainer:

Choose the option to manage the local Docker environment.

Create an admin password.

Choose whether to enable telemetry data collection (this is optional).

Finish the setup process.