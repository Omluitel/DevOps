# Docker Swarm

Docker Swarm is a container orchestration platform that simplifies the management and deployment of containerized applications at scale. It is an integral part of the Docker ecosystem, designed to provide high availability, load balancing, and automated container orchestration.

## Key Features of Docker Swarm

- **Orchestration**: Docker Swarm automates the deployment, scaling, and management of containerized applications, making it easier to maintain and scale large-scale applications.

- **High Availability**: It ensures that applications remain available even if individual containers or nodes fail. Docker Swarm automatically redistributes containers to healthy nodes.

- **Load Balancing**: Swarm includes built-in load balancing to evenly distribute traffic across containers and nodes, ensuring optimal resource utilization and performance.

- **Service Discovery**: Swarm provides service discovery mechanisms, making it easy for containers to discover and communicate with each other using unique DNS names.

- **Scaling**: You can scale services up or down with a simple command, and Swarm dynamically adjusts the number of replicas to maintain the desired state.

- **Rolling Updates**: Swarm supports rolling updates, allowing you to update container images with minimal downtime and the ability to roll back in case of issues.

- **Security**: It enforces TLS mutual authentication and encryption between nodes by default, ensuring secure communication within the cluster.

- **Multi-Host Networking**: Swarm enables containers on different hosts to communicate seamlessly over overlay networks.

- **Integration**: Docker Swarm can be seamlessly integrated with other Docker tools, such as Docker Compose and Docker Registry.

## How Docker Swarm Works

- **Initialization**: You start by initializing a Docker Swarm with one or more manager nodes using the `docker swarm init` command. A join token is generated to allow worker nodes to join the Swarm.

- **Joining Nodes**: Worker nodes join the Swarm by running the `docker swarm join` command with the provided token. They become part of the cluster and can execute tasks.

- **Service Definition**: You define services, which represent the containers you want to run. Services specify configurations such as the number of replicas, container images, and ports.

- **Scheduling and Load Balancing**: Swarm manager nodes use scheduling algorithms to determine where to run service tasks, distributing them across worker nodes for load balancing and high availability.

- **Scaling and Updates**: You can easily scale services and update container images to adapt to changing requirements. Swarm handles task distribution and updates.

- **Service Discovery**: Each service is assigned a unique DNS name, simplifying inter-container communication.

- **Security**: Swarm ensures secure communication between nodes and enforces authentication and encryption.

- **Monitoring and Management**: Docker Swarm provides tools for monitoring and managing the cluster's health and performance.

In summary, Docker Swarm simplifies the orchestration of containerized applications by providing automation, high availability, and load balancing, making it a powerful choice for deploying and managing containers in production environments.

# Create a Docker Swarm

To create a Docker Swarm for container orchestration, follow these steps:

1. **Check Swarm Mode**:
   - Verify if Swarm mode is enabled by running the following command:
     ```shell
     docker system info | grep Swarm
     ```

2. **Initialize the Swarm**:
   - On the manager node, initiate the Swarm using one of the following commands:
     ```shell
     docker swarm init
     ```
     or
     ```shell
     docker swarm init --advertise-addr [Manager_IP]
     ```
   - After initialization, check the Swarm status to ensure it is active:
     ```shell
     docker system info | grep Swarm
     ```
   - The output of the `docker swarm init` command also provides a join-token for worker nodes. It's essential to note that this token contains the address of the master node. Thus, having static IP addresses for nodes is crucial.

3. **Add a Worker Node**:
   - To include a worker node in the Swarm cluster, execute the following command on the worker node, using the previously obtained join-token:
     ```shell
     docker swarm join-token [Token] [Manager_IP]:2377
     ```

4. **List Swarm Nodes**:
   - To view the nodes within the Swarm cluster, use the following command:
     ```shell
     docker node ls
     ```

## Managing the Swarm nodes

| Task                                       | Command                                           |
| ------------------------------------------ | ------------------------------------------------- |
| Listing Nodes                              | `docker node ls`                                  |
| Inspecting a Node                          | `docker node inspect [Node_Name]` or <br> `docker node inspect manager1 --pretty` |
| Promoting a Worker Node to a Manager       | `docker node promote [Node_Name]`                 |
| Demoting Manager to a Worker               | `docker node demote [Node_Name]`                  |
| Removing a Node from the Swarm             | `docker node rm -f [Node_Name]`                   |
| Node Leaving the Swarm                     | `docker swarm leave`                              |
| Getting the Join Token                     | `docker swarm join-token [worker|manager]`        |
| Having a Node Rejoin the Swarm             | `docker swarm join-token [Token] [Manager_IP]:2377` |
| Listing Swarm Nodes                        | `docker node ls`                                  |

This table format provides a clear overview of the tasks and the corresponding Docker commands for managing Docker Swarm nodes.
