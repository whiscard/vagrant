#!/bin/bash

WDIR="/vagrant/repos/git/idemp-training"
LOGDIR="/vagrant"

#Check if the idempiere training folder exists
if [ -d $WDIR ]
then
    echo "idempiere training directory exists" >> $LOGDIR/starting.log
    cd $WDIR
    ./deployment-tools/setup-development-workstation.sh ExpDat20170724_044759_AcmeHosp_Pharma_Inventory.jar >> $LOGDIR/starting.log
    ./deployment-tools/setup-development-workstation.sh start >> $LOGDIR/starting.log
    ./deployment-tools/setup-development-workstation.sh status >> $LOGDIR/starting.log
else
    echo "idempiere training directory DOES NOT exist" >> $LOGDIR/starting.log
fi
