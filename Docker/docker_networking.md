## Docker Networking

Docker networking involves three major components:

1. **Container Network Model (CNM):**
   CNM defines the fundamental building blocks of Docker networks.

2. **Libnetwork:**
   Libnetwork is the real-world implementation of CNM. Docker uses it for connecting containers. Libnetwork is responsible for service discovery, ingress-based container load balancing, and network and management control plane functionality.

3. **Drivers:**
   Drivers extend the network model by implementing specific network topologies.

### Network Drivers -- see on table for detailed explanation

| Driver  | Description |
|---------|-------------|
| bridge  | Default network that forwards traffic between segments. |
| host    | Removes network isolation between container and host. |
| overlay | Connects containers across multiple hosts (swarm mode). |
| macvlan | Assigns a MAC address, making containers appear as physical devices on the network. |
| none    | Disables networking; used in conjunction with a custom network driver. |
| ...     | Custom network drivers (user-defined network types). |

### Common Network Commands

| Command                                 | Description                           |
|-----------------------------------------|---------------------------------------|
| `docker network ls`                     | List all networks.                    |
| `docker network inspect <NAME>`         | Get detailed info on a network.       |
| `docker network create <NAME>`          | Create a new network.                 |
| `docker network rm <NAME>`              | Remove a network.                     |
| `docker network connect <NET> <CONT>`   | Add a container to a network.         |
| `docker network disconnect <NET> <CONT>`| Remove a container from a network.    |
| `docker network prune`                  | Remove all unused networks.           |

### Example

docker container run -d --name network-test -p 8081:80 nginx
docker network create br01
docker network connect br01 network-test
docker network inspect network-test
docker network disconnect br01 network-test






| Networking Type   | Description                                      | How to Create                                    | How It Works                                                                                                 |
|-------------------|--------------------------------------------------|-------------------------------------------------|--------------------------------------------------------------------------------------------------------------|
| Bridge Network    | Default network created by Docker.              | `docker network create my_bridge`             | Containers in the same bridge network can communicate using IP addresses.                                   |
|                   | Containers in the same bridge network            | `docker run -d --network my_bridge --name`   | Docker creates a virtual network bridge on the host, and containers attached to the same bridge share    |
|                   | can communicate using IP addresses.            | `container1 nginx`<br>`docker run -d --network| the same network bridge. The bridge acts as a switch, allowing containers to communicate with each     |
|                   |                                                  | my_bridge --name container2 nginx`            | other using IP addresses.                                                                                  |
|-------------------|--------------------------------------------------|-------------------------------------------------|--------------------------------------------------------------------------------------------------------------|
| Host Network      | Containers share the host's network namespace.   | `docker run -d --network host --name`       | Containers use the host's network stack directly. They share the same network namespace as the host,    |
|                   | Containers can access services on the host's     | `container nginx`                             | allowing them to access services running on the host's IP addresses.                                      |
|                   | network.                                         |                                                 |                                                                                                              |
|-------------------|--------------------------------------------------|-------------------------------------------------|--------------------------------------------------------------------------------------------------------------|
| Overlay Network   | Enables communication between containers across   | `docker network create -d overlay my_overlay`| In a swarm mode, Docker creates overlay networks that span across multiple Docker daemons on different   |
|                   | multiple Docker daemons in swarm mode.            | `docker service create --name my_service --  | hosts. These overlay networks allow containers in different hosts to communicate securely using encrypted |
|                   |                                                  | network my_overlay nginx`                    | tunnels. Containers on different hosts can communicate using the service name and published ports.       |
|-------------------|--------------------------------------------------|-------------------------------------------------|--------------------------------------------------------------------------------------------------------------|
| Macvlan Network   | Assigns a MAC address to each container, making  | `docker network create -d macvlan --subnet=`  | Macvlan networks allow containers to have MAC addresses and IP addresses on the physical network,      |
|                   | them appear as separate devices on the physical  | `192.168.1.0/24 --gateway=192.168.1.1 -o      | appearing as separate devices with unique MAC and IP addresses. Containers can communicate directly    |
|                   | network.                                         | parent=eth0 my_macvlan`<br>`docker run -d -- | with other devices on the physical network.                                                              |
|                   |                                                  | network my_macvlan --name container --ip=   |                                                                                                              |
|                   |                                                  | 192.168.1.10 nginx`                          |                                                                                                              |
|-------------------|--------------------------------------------------|-------------------------------------------------|--------------------------------------------------------------------------------------------------------------|
| None Network      | Containers run in isolation without network      | `docker run -d --network none --name`       | Containers in the none network have no network connectivity. They can't communicate with other containers |
|                   | connectivity.                                   | `isolated_container nginx`                   | or external networks. Useful for scenarios where network access is not required.                          |
|-------------------|--------------------------------------------------|-------------------------------------------------|--------------------------------------------------------------------------------------------------------------|
| Custom Networks   | User-defined networks with custom configurations| `docker network create my_network`<br>`docker| User-defined networks can be created to facilitate communication between specific containers. Custom        |
|                   | for better organization and communication        | run -d --network my_network --name container1| networks can be isolated, allowing containers to communicate within defined network boundaries.            |
|                   | between containers.                              | nginx`<br>`docker run -d --network my_network |                                                                                                              |
|                   |                                                  | --name container2 nginx`                    |                                                                                                              |
