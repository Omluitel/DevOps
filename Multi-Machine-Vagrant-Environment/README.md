# Vagrant Multi-VM Configuration

This repository contains a Vagrant configuration script that sets up and provisions two virtual machines, one running Ubuntu and the other running CentOS. The script utilizes Vagrant, a tool for managing and creating virtualized development environments, and VirtualBox as the provider.

## Prerequisites

Before using this Vagrant configuration, ensure you have the following software installed on your system:

* Vagrant
* VirtualBox

## Vagrant Commands

There are a few commands that we can use on multi-Vagrant machines. Here are a few examples:

    `vagrant up: This command will start up all of the virtual machines defined in your Vagrantfile.
    `vagrant halt`: This command will stop all of the virtual machines defined in your Vagrantfile.
    `vagrant destroy`: This command will destroy all of the virtual machines defined in your Vagrantfile.
    `vagrant ssh`: This command will open an SSH session to a specific virtual machine. You can specify the name of the virtual machine as an argument to this command. For example, to open an SSH session to the Ubuntu virtual machine, you would run the following command:

## SSH Into Vagrant Machine

`vagrant ssh Ubuntu`

    vagrant provision: This command will reprovision all of the virtual machines defined in your Vagrantfile. This is useful if you have made changes to your Vagrantfile and you want to make sure that the virtual machines are up to date.

You can also use the vagrant command to perform more specific tasks on individual virtual machines. For example, to get the IP address of the Ubuntu virtual machine, you would run the following command: