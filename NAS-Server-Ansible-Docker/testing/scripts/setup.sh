#!/bin/bash
#Description: Script to setup the vagrant file and display meaningful text, has had numerous iterations depending on new findings
# Author: Scarlett Dixon
# Bibliography: N/A

workdir=..;
running="The VM is running";
off="The VM is powered off"
status=$(vagrant status)

cd $workdir;

echo "$PWD";

if [ $status =~ $running ];
then
    echo "----Provisioning---"
    vagrant provision;
else
    echo "---Vagrant Setting Up---"
    vagrant up;
fi

echo $status;

vagrant ssh-config;

sleep 10;

if [[ $status =~ $off ]];
then
    echo "----Seemingly Off, Attempting Set Up---"
    vagrant reload;
    vagrant up;
fi



# ansible -- version;

# ansible all -m ping;

# ansible-playbook test-server.yml;

#vagrant halt;


#vagrant ssh;

#ansible all -m ping;