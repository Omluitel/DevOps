# Vagrant Usage Guide

Vagrant is a tool for managing and provisioning virtualized development environments. It simplifies the process of setting up and managing virtual machines (VMs) for development purposes.

## Useful Vagrant Commands

- **`vagrant init`**: Initializes a new Vagrant project in the current directory, creating a Vagrantfile that you can configure for your VM.  <br>
  Example: `vagrant init ubuntu/bionic64`

- **`vagrant up`**: Creates and starts the virtual machine(s) defined in the Vagrantfile. If the VM doesn't exist, it will be created. <br>
  Example: `vagrant up`

- **`vagrant halt`**: Stops the running virtual machine(s) gracefully. This is similar to shutting down a computer. <br>
  Example: `vagrant halt`

- **`vagrant ssh`**: Opens an SSH session to the default or specified virtual machine. This allows you to interact with the VM's terminal. <br>
  Example: `vagrant ssh`

- **`vagrant reload`**: Restarts the virtual machine, applying any changes made to the Vagrantfile. <br>
  Example: `vagrant reload`

- **`vagrant box list`**: Lists all available Vagrant boxes (base images) that you can use to create VMs. <br>
  Example: `vagrant box list`

- **`vagrant status`**: Displays the status of all defined virtual machines, whether they're running, halted, suspended, etc. <br>
  Example: `vagrant status`

- **`vagrant provision`**: Forces the provisioning scripts specified in the Vagrantfile to run on the VM without recreating it. Useful when you want to apply configuration changes without restarting the VM. <br>
  Example: `vagrant provision`

- **`vagrant box remove`**: Removes a Vagrant box from your local box repository. <br>
  Example: `vagrant box remove`

- **`vagrant plugin install`**: Installs Vagrant plugins that provide additional functionality, such as new providers or provisioners. <br>
  Example: `vagrant plugin install vagrant-vbguest`
  (This command installs the "vagrant-vbguest" plugin, which helps maintain the VirtualBox Guest Additions in the VM.)


