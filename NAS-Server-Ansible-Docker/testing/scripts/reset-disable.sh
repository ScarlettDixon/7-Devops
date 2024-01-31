#!/bin/bash
# Description: Simple script to halt vagrant processing, only real use is so there is no need to remember the commands.
# Author: Scarlett Dixon
# Bibliography: N/A

workdir=..;
running="is running";
status=$(vagrant status)

cd $workdir;

vagrant halt;

#vagrant suspend;

#vagrant destroy;

echo $status;