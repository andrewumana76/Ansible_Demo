# Authored by: Andrew Umana
# This file is used to insert a string for grub kernel parameter hardening

import sys

#read /etc/default/grub
grubby_cmd_line = open("grub", "r+")

#prime the first line for reading
line = grubby_cmd_line.readline()

#run the loop until the end of file
while line!="":

  #Find the GRUB_CMDLINE_LINUX entry in /etc/grub/default
  if line.find("GRUB_CMDLINE_LINUX") != -1:

    #argument to be added to end of the line (ex. vsyscall=none)
    if line.find(sys.argv[1]) == -1:
      line_length = len(line)
      
      #parsing to end of the line and inserting the argument string
      line = line[:line_length-2] + " " + sys.argv[1] + line[line_length-2:]
      
      #overwrite the new line in the file
      grubby_cmd_line.write(line)
      break

  #read the next line for the while loop
  line = grubby_cmd_line.readline()

#close the file
grubby_cmd_line.close()
