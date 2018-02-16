#!/bin/bash

WDIR="/vagrant"
LOGDIR="/vagrant"

#Check if the idempiere training folder exists
if [ -d $WDIR ]
then
    echo "idempiere directory exists" >> $LOGDIR/starting.log
    cd $WDIR
    sudo apt-get -y update; sudo apt-get -y install mercurial; hg clone https://bitbucket.org/cboecking/idempiere-installation-script; \
    chmod 766 idempiere-installation-script/*.sh; ./idempiere-installation-script/idempiere_install_script_master_linux.sh \
    -P AdminOHMIS123 -u ubuntu -l &>output.txt
else
    echo "idempiere training directory DOES NOT exist" >> $LOGDIR/starting.log
fi
