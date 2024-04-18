**Please watch the following video for an initial introduction to this repository. I do an initial walk-through of the ansible automation on the Linux PCs :**


https://youtu.be/ZZ0JYsY99_g

# Introduction

Welcome to my GitHub page! 🚀 In the realm of Linux, cybersecurity plays a pivotal role in safeguarding our systems and data. It's an essential aspect that demands attention.

Ansible is a powerful automation tool that simplifies complex tasks in Linux environments, including cybersecurity management. With Ansible, we can streamline security measures, ensuring consistent configurations and rapid responses to emerging threats. The use of Ansible reduces manual effort and minimizes the risk of human error. Ansible allows use to "code" STIG requirements into reusable playbooks, allowing cybersecurity teams enforce security policies consistently across multiple environments.

This repository is dedicated to exploring RHEL9 Linux and cybersecurity STIGs, highlighting the effectiveness of Ansible in fortifying our infrastructure. 

This repository is receiving daily updates on STIG automation.

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------


## Main Directories

**config_files**
- This currently holds our default ansible config file

**inventory_files**
- This holds the IP(s) of my ansible nodes. 

**playbook_files**
- This holds the main hardening playbook.

**source_files**
- This directory holds any source files needed for the ansible automation such such bash or python scripts.


-------------------------------------------------------------------------------------------------------------------------------------------------------------------------

## Important Files

  **inventory.yaml**

![alt text](https://github.com/andrewumana76/Ansible_Demo/blob/main/pictures/inventory_yaml.png)

-Currently my environmnent only has one master node and one ansible node. The IP of the ansible node is show in the screenshot. This file is used by ansible to create ssh connections to the ansible node and run its modules.

--------------------

**RHEL9_V1R2.yaml**

![alt text](https://github.com/andrewumana76/Ansible_Demo/blob/main/pictures/RHEL_9_STIG_yaml.png)

-This is the most important file in the repository. This holds all the ansible plays for running the RHEL 9 STIGs. It consists of built-in ansible modules/commands or references to scripts or misc files in the sources directory. 

You can view all the RHEL9 STIGs here: https://www.stigviewer.com/stig/red_hat_enterprise_linux_9/
