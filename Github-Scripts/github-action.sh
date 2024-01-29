#!/bin/bash
# Description: A script to be used with Github Actions to install complete needed tasks so the workflows can run effectively.
# Author: Scarlett Dixon
# Bibliography: N/A

function AS01(){
    echo "---Ansible Staging 01 - NAS Testing---" ;
    wget -O- https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg ;
    echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list ;
    sudo apt update && sudo apt install vagrant ;
	echo "${PWD}"
    sh ".${PWD}/NAS-Server-Ansible-Docker/testing/scripts/setup.sh" ;
}

function main(){
	echo "---Argument Inputted: $1---"
    #If Input Exists
	if [ -n $1 ] ; then
		#Input in lower case
		case "${1,,}" in
			as01 | ansible_staging_01 | ans-sta-01)					AS01;;
            ap01 | ansible_production_01 | ans-prod-01)				AP01;;
			as02 | ansible_staging_02 | ans-sta-02)					AS02;;
			ap02 | ansible_production_02 | ans-prod-02)				AP02;;
			*)														echo "---No Valid Commands used---" ;;
		esac
	else
    	echo "---'$1' used as an argument was not successful---" ;
	fi


}

main $@ ;