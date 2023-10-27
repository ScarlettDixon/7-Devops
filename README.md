# 7-Devops
Code created while developing my knowledge of Devops. Although I tried to split them up for easier viewing
All information that would give away personal or security dependant details have been stripped from the code

---
### IaC - Configuration Management - Ansible  - 
Ansible is an amazing tool for configuration management, I had been interested previously in automating my laptop's Arch Installation so that I could make sure it was clean and I was more aware of what was on it, it also helps with setting up environments and combined with Terraform setting up the infrastructure it can be an incredibly powerful tool. Several projects have been created so far.
They include:
##### ArchInstall - 
As discussed above, my laptop setup will be managed using ansible, using multiple different roles for the different functions.
* Setup The Drives
* Install all Used Software
* Setup Security Settings
* Start all needed software/security services
* Pull in Backed up Information
##### AWSSetup - 
I've been improving my abilities with AWS while also taking moving up the certification tree, I have several personal projects that interest me and could use AWS for cloud based testing and hosting, automatic setup of these devices (after creation using terraform, discussed below) is incredibly useful.
##### NAS-Server-Ansible - 
A Set of folders and files that can be used when I initially am able to SSH in. This can install key software and setup different areas of the system, and will contain some of my experiments in getting different services running. Some of this code will not be included in this repository due to its sensitive nature but I will try to make it as complete as possible.

---	
### IaC - Infrastructure Management - Terraform - 
Terraform is useful for ensuring that the creation of servers systems is both automated and constant.
##### AWSSetup - 
As stated above configuration of AWS can be completed using ansible but creation of these AWS test devices can be spun up using terraform, steps have been taken to not include any private information while still providing useful details.

---	
### IaC - Containers and Container Management - Docker/Kubernetes -
Continously shown in others sections, using docker has been a big part of my recent devops experience. Prior to using it I mainly used VMs. These Virtual Machines used a large amount of limited resources and needed to be configured individually and manually, which was both a massive time consumer and usually laden with errors due to missed/forgotten steps. I briefly used vagrant as it has some automated configuration abilities (and in some cases where more heavyweight systems are needed I still do) but being able to create a dockerfile once and bypass manual configuratioin while also being able to create easily interactable lightweight containers was an utter relief and great for workflow.

---	
### CI/CD - Automated Tests - Pytest/Selenium - 
I have used selenium in the past for web scraping and it can likely be found in my previous work at university, but it's been really interesting to use it within web development for better devops processing.

---	
### CI/CD - Pipelining -  Jenkins/Gitlab -
Combining the testing methods learned above I was able to develop my knowledge by staring to make full devops cycles, 

---	
### Logging - Splunk/ELK-
While working as a Security Engineer, one of my main roles is to generate alerts for client splunk instances, taking in logs and working at an enterprise level, this has given me a lot of skills when related to writing in SPL and otherwise setting up servers for clients.

---	
### Monitoring - Zabbix/Prometheus - 
Although limited, use of prometheus was succesful on my personal laptop has been quite insightful.

### Programming - Python/C++
Some projects under this section are repeated scripts from my personal code repository but with the added caveat of showing off devops processes used throughouts. 
##### Jira Manipulation through their Python API - 
This was formed using knowledge gained during several projects developed for my job as a Security Engineer, a particular client needed code to automate data gathering for heavy auditing procedures.
