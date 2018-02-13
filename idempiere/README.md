Idempiere Setup
- Create a directory that will be your vagrant home. This directory will be shared between the host and the guest OS.
- cd to your vagrant home directory and then clone this vagrant repo
- You will get the idempiere directory with the Vagrant file. The Vagrant file contains the ubuntu image(16.04) that vagrant will pull from the Vagrant store.

Provisioning Script
- The Vagrant file also contains a provisioning script that will attempt install and then to start the idempiere server incase the idempiere-training folder is available in the location of the vagrant home that was created above. 
  - If you cloned this repo at the location /home/user/vms then place the idempiere training folder in /home/user/vms/idempiere/repos/git/
NOTE
- The provisioning script checks if the following folder in the GUEST VM exists /vagrant/repos/git/idemp-training
- This location is equivalent to the following location on the HOST OS /home/user/vms/idempiere/repos/git/idemp-training

- If the folder exists then the script will install the server and attempt to start it. The Vagrant file exposes port 8081 on the HOST VM therefore idempiere should be accessible in the HOST IP and PORT 8081 if the server is running.
