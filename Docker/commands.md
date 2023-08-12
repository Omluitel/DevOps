# Docker and Containerization

## What is Docker?

Imagine Docker as a magical box that lets you build, ship, and run your computer programs in a special way. This special way is called a "container." These containers package your program along with everything it needs to work, like tools, parts, and instructions.

## Problem Docker Solves

Before Docker, computer programs were like picky eaters. They needed their own special plates and settings to work correctly. When we moved programs from our computers to other places like servers, they often got cranky because the surroundings were different. Docker fixes this problem. It gives each program its own little world (container) to live in. This way, no matter where the program goes, it's always happy in its own cozy space.

## Software Development Before and After Docker

Before Docker, making programs work on different computers was a big puzzle. Sometimes a program would work on one computer but not on another because they were set up differently. Docker helps by making sure each program has the same setup wherever it goes. It's like having a recipe that you can use anywhere, and it helps us avoid cooking disasters.

## What is Docker and Why Use It?

Docker is like a superhero for developers. It takes your program and wraps it up in a container, making sure it has everything it needs to run smoothly. This container idea makes it easier to share programs with others. You can send a container to your friend, and they can run it on their computer without any trouble. It's like sending them a fully-equipped playground for your program to play in.

## Docker vs. Virtual Machine (VM)

Virtual Machines are like having separate playgrounds for each program, but they're a bit heavy. Docker's containers are like tiny playhouses that share the same playground. This makes them faster and uses less space. So, if you have many containers, it's like having a playground full of fun, lightweight playhouses.

## Installing Docker Locally

To get your own Docker magic box:

- Visit the [Docker website](https://www.docker.com/) and follow their instructions for your computer.
- Once it's done, you can use the word "docker" in your computer's magic shell (terminal) to do Docker things.

## Images vs. Containers

Think of an **image** like a blueprint for your container. It's a recipe for creating your playhouse. A **container** is like a real playhouse made from the blueprint. It's where your program lives and plays.

## Public vs. Private Registries

Imagine if you could share your playhouses with your friends. A **public registry** is like a big playground where everyone can share and play with each other's containers. A **private registry** is like your secret treehouse, where only you and your trusted pals can play.

Remember, Docker is all about making your programs happy, cozy, and easy to share. It's like giving them their own magical world to live in.


# Docker commands

## Basic commands

* `docker ps`: List all running containers.
* `docker images`: List all images.
* `docker run`: Run a container from an image.
* `docker stop`: Stop a running container.
* `docker start`: Start a stopped container.
* `docker remove`: Remove a stopped container.

## Advanced commands

* `docker build`: Build an image from a Dockerfile.
* `docker push`: Push an image to a registry.
* `docker pull`: Pull an image from a registry.
* `docker tag`: Tag an image.
* `docker inspect`: Get information about a container or image.
* `docker network`: Manage Docker networks.
* `docker volume`: Manage Docker volumes.

## Useful links

* [Docker documentation](https://docs.docker.com/)
* [Docker CLI reference](https://docs.docker.com/engine/reference/commandline/cli/)
* [Docker cheat sheet](https://cheatography.com/adambard/cheat-sheets/docker/)

