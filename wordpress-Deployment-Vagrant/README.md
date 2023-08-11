# Vagrant Configuration for WordPress Development

This code is a setup for using Vagrant to create a virtual environment tailored for developing WordPress websites. It takes care of configuring a virtual machine with the necessary tools.

## Getting Started

To use this setup, make sure you have [Vagrant](https://www.vagrantup.com/) and [VirtualBox](https://www.virtualbox.org/) installed on your computer.

1. Clone or download this repository to your local machine.

2. Open a terminal and navigate to the directory containing the downloaded files.

3. Run the following command to start the virtual machine:
   

4. Once the setup is complete, you can access your WordPress development environment.

## Configuration Details

### Base Box
The virtual machine is based on the "ubuntu/focal64" box, which provides an Ubuntu 20.04 environment.

### Network Settings
The virtual machine is set to use a public network connection so you can access it from other devices on your network.

### Folder Sync
There's a line that's commented out (prefixed with `#`). You can uncomment and modify this line to sync a local folder with a folder inside the virtual machine. This can be handy for sharing files between your computer and the virtual machine.

### Provider-Specific Settings (VirtualBox)
You can customize settings for VirtualBox, the virtualization software being used. There are options to enable the GUI interface (`vb.gui = true`) and adjust memory (`vb.memory = "1024"`).

### Provisioning with Shell Commands
The script sets up the virtual machine with required software and configurations:

- Installs software like Apache, PHP, MySQL, and various PHP extensions.
- Creates directories and sets permissions.
- Downloads and configures WordPress.
- Configures Apache web server.
- Sets up MySQL database and user.
- Configures WordPress settings.

## Usage

You can modify the shell commands within the `config.vm.provision` block to match your specific needs. These commands are executed automatically during the setup process.

## Important Notes

- Keep in mind that this setup is for development purposes and might not be suitable for production environments.
- Make sure to secure your MySQL user credentials and database settings.
- Always refer to the official documentation for [Vagrant](https://www.vagrantup.com/) and [VirtualBox](https://www.virtualbox.org/) for more details.

Feel free to adapt this setup to your requirements and happy WordPress development!


## Manual WordPress Installation Guide

If you prefer a manual approach for setting up WordPress, you can follow the detailed instructions provided in the [Ubuntu tutorial](https://ubuntu.com/tutorials/install-and-configure-wordpress#1-overview). The tutorial covers each step of the process, from installing the necessary software to configuring your WordPress site.

**[Follow the Manual WordPress Installation Tutorial](https://ubuntu.com/tutorials/install-and-configure-wordpress#1-overview)**

This tutorial will walk you through setting up the LAMP stack, creating a MySQL database and user for WordPress, downloading and configuring the WordPress files, setting up the Apache configuration, and completing the WordPress installation.

