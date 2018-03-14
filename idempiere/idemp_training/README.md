Idempiere Setup
- Create a directory that will be your vagrant home. This directory will be shared between the host and the guest OS.
- cd to your vagrant home directory and then clone this vagrant repo
- You will get the idempiere directory with the Vagrant file. The Vagrant file contains the ubuntu image(16.04) that vagrant will pull from the Vagrant store.
- Run the command "vagrant up"
	- This will boot up the VM and run the provisioning script explained below.
- Once the machine boots up, you can then run the command "vagrant ssh" to login to the VM.

Provisioning Script
- The Vagrant file also contains a provisioning script that will attempt install and then to start the idempiere server incase the idempiere-training folder is available in the location of the vagrant home that was created above. 
  - If you cloned this repo at the location /home/user/vms then place the idempiere training folder in /home/user/vms/idempiere/repos/git/
NOTE
- The provisioning script checks if the following folder in the GUEST VM exists /vagrant/repos/git/idemp-training
- This location is equivalent to the following location on the HOST OS /home/user/vms/idempiere/repos/git/idemp-training as per the example above
- If the folder exists then the script will install the server and attempt to start it. The Vagrant file exposes port 8081 on the HOST VM therefore idempiere should be accessible in the HOST IP and PORT 8081 if the server is running.

Commands
1. To boot the vm cd to the location of the vagrant file and the run:
$ vagrant up
2. Once the vm boots and the provisioning script runs, run the following to connect to the vm:
$ vagrant ssh
3. To shutdown the vm, you can run:
$ vagrant halt
4. The provisioning script only runs the first time the vm is created, that is when "vagrant up" is ran for the first time. To re-run the provisioning script run:
$ vagrant provision
5. To delete the vagrant box or VM run:
$ vagrant destroy
