# Vagrantfile Overview

This Vagrantfile automates the setup of a Virtual Machine (VM) with the following tasks:

1. **Base Box Selection:**
   - It specifies the base box as "ubuntu/bionic64" (an Ubuntu 18.04 64-bit image). You can choose a different base box if needed.

2. **Networking:**
   - It configures a private network using DHCP, allowing communication between the host machine and the VM.

3. **Provider Configuration (VirtualBox):**
   - It sets VM resource settings:
     - Memory: 5000 MB (you can adjust this based on your requirements).
     - CPUs: (you can adjust this based on your requirements).

4. **Provisioning (Shell Script):**
   - The script updates package lists and installs prerequisites for Docker and Jenkins.
   - It adds the Docker repository and installs Docker and Docker Compose.
   - Your user is added to the Docker group to allow Docker to be run without `sudo`.
   - Finally, it runs a Jenkins Docker container:
     - It mounts a Docker volume for Jenkins home.
     - Exposes ports 8080 and 50000 for Jenkins access.
     - Sets the container to restart on failure.

5. **Access Jenkins:**
   - After provisioning, Jenkins can be accessed at http://<vagrant_machine ip>:8080 in your web browser.

6. **Customization:**
   - You can customize the Vagrantfile, base box, VM settings, and Docker container as needed for your specific use case.

# Usage
To use this Vagrantfile:
1. Ensure you have Vagrant and a virtualization provider (e.g., VirtualBox) installed on your host machine.
2. Create a directory for your Vagrant project and place the Vagrantfile in it.
3. Open a terminal in the project directory and run `vagrant up` to create and provision the VM.
4. Once provisioning is complete, access Jenkins at http://<vagrant_machine ip>:8080 in your web browser.

Feel free to adjust the Vagrantfile parameters to match your requirements and preferences.
