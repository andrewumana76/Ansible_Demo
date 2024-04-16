import sys

#read /etc/sysctl.d/99-sysctl.conf
sysctl_99_file = open("/etc/sysctl.d/99-sysctl.conf", "r+")

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