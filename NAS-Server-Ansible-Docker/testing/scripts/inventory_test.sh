#!/bin/bash

local workdir=..

cd $workdir

vagrant up

vagrant ssh

ansible all -m ping