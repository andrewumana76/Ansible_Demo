# This document's goal is to implement kernel restrictions on the sysctl.d directory based on the RHEL9 STIG
# Author : Andrew Umana

import sys
import os

#read /etc/sysctl.d/99-sysctl.conf
sysctl_path="/etc/sysctl.d/99-sysctl.conf"

#creates the file if its not there
if not os.path.exists(sysctl_path):
    with open(sysctl_path, 'w') as sysctl_99_file:
        sysctl_99_file.write("#99-sysctl.conf file" + '\n')
        sysctl_99_file.close()

sysctl_99_file = open(sysctl_path, "r+")

#prime the first line for reading
line = sysctl_99_file.readline()

#value that tracks if the string has been found
found = 0

#run the loop until the end of file
while line!="":

  #Find the argument in /etc/sysctl.d/99-sysctl.conf
  if line.find(sys.argv[1]) != -1:
   found = 1   
   break

  #read the next line for the while loop
  line = sysctl_99_file.readline()

if found == 0:
  sysctl_99_file.write(sys.argv[1] + '\n')

#close the file
sysctl_99_file.close()
