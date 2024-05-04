# Introduction

Welcome to my GitHub page! 🚀 In the realm of Linux, cybersecurity plays a pivotal role in safeguarding our systems and data. It's an essential aspect that demands attention.

Ansible is a powerful automation tool that simplifies complex tasks in Linux environments, including cybersecurity management. With Ansible, we can streamline security measures, ensuring consistent configurations and rapid responses to emerging threats. The use of Ansible reduces manual effort and minimizes the risk of human error. Ansible allows us to "code" STIG requirements into reusable playbooks, allowing cybersecurity teams enforce security policies consistently across multiple environments.

This repository is dedicated to exploring RHEL9 Linux and cybersecurity STIGs, highlighting the effectiveness of Ansible in fortifying our infrastructure. This repo also features DNS automation. 

This repository is receiving daily updates on STIG automation.

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------


## Main Directories

**config_files**
- This currently holds our default ansible config file

**inventory_files**
- This holds the IP(s) of my ansible nodes. 

**playbook_files**
- This holds the main hardening playbook. Also holds a playbook to set up the DNS client. 

**source_files**
- This directory holds any source files needed for the ansible automation such as bash/python scripts and DNS/DHCP conf files.


-------------------------------------------------------------------------------------------------------------------------------------------------------------------------

## Important Files

  **inventory.yaml**

![alt text](https://github.com/andrewumana76/Ansible_Demo/blob/main/pictures/inventory_yaml_.png)

-Currently my environment only has one master node, one RHEL 9 ansible node, and one CentOS 7.9 ansible node. The IP of the ansible nodes are shown in the screenshot. This file is used by ansible to create ssh connections to the ansible node and run its modules.

--------------------

**RHEL9_V1R2.yaml**

![alt text](https://github.com/andrewumana76/Ansible_Demo/blob/main/pictures/RHEL_9_STIG_yaml.png)

-This is the most important file in the repository. This holds all the ansible plays for running the RHEL 9 STIGs. It consists of built-in ansible modules/commands or references to scripts or misc files in the sources directory. 

You can view all the RHEL9 STIGs here: https://www.stigviewer.com/stig/red_hat_enterprise_linux_9/

--------------------

**DNS_Client_Setup.yaml**

![alt text](https://github.com/andrewumana76/Ansible_Demo/blob/main/pictures/DNS_Client_Setup_yaml.png)

-This file is used to setup the DNS files on a remote client. It adds the firewall dns exception, and overwrites the appropriate files.
