#!/bin/bash

WDIR="/vagrant/repos/git/idemp-training"
LOGDIR="/vagrant"
cd $WDIR
./deployment-tools/setup-development-workstation.sh ExpDat20170724_044759_AcmeHosp_Pharma_Inventory.jar >> $LOGDIR/starting.log
./deployment-tools/setup-development-workstation.sh start >> $LOGDIR/starting.log
./deployment-tools/setup-development-workstation.sh status >> $LOGDIR/starting.log
