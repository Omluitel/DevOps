# Vagrant Environment Setup for static website deployment

This Vagrant configuration script is written in Ruby mode. It sets up a Vagrant environment with various settings and provisions using a shell script.

## Configuration Details

- **Box**: generic/centos8
- **Network**: Public network configuration
- **Provider**: VirtualBox

### Box Configuration

The Vagrant environment is configured to use the "generic/centos8" box. This box provides a CentOS 8 operating system.

### Network Configuration

A public network is configured for the virtual machine (VM). This allows the VM to be accessible from external networks.

### Provider Configuration

VirtualBox is specified as the provider for the VM. Within the provider block, you have the option to customize the VM's settings.

- To enable GUI mode for the VM, uncomment the line: `# vb.gui = true`
- You can also customize the VM's memory by setting its value. For example: `# vb.memory = "1024"`

### Provisioning

The VM is provisioned using a shell script. The following steps are performed:

1. Install required packages (`httpd`, `wget`, `unzip`) using `yum`.
2. Start the Apache HTTP server and enable it to start on boot using `systemctl`.
3. Download a ZIP template from "https://www.tooplate.com/zip-templates/2079_garage.zip" to the `/tmp/` directory using `wget`.
4. Unzip the downloaded ZIP file and copy its contents to the Apache web root (`/var/www/html/`).
5. Restart the Apache HTTP server to apply the changes.
6. Configure firewall rules to allow HTTP traffic using `firewall-cmd`.

## Usage

1. Make sure you have Vagrant and VirtualBox installed on your system.
2. Create a directory for your Vagrant project and navigate to it.
3. Copy the content of this configuration script into a `Vagrantfile` within your project directory.
4. Open a terminal and navigate to your project directory.
5. Run the following command to start and provision the VM:
   
