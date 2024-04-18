#This script takes in a string, destination file, and x arguments of file to determines if the correct settings are set
#If it doesn't find the setting, it will append the string to the destination file
#Author: Andrew Umana

#!/bin/bash

#Number of files the argument wants to parse
Number_Files=$(($# - 1))

#The First Argument is the actual text
First_Arg="$1"
shift

#THe Second Argument is the destination file
Second_Arg="$2"
shift

#Initializing found variable
found=0

#This for loop is going through each file the command line passes
for i in $@
do
	#This while loop is reading the lines of the text file
	while read line; 
	do

		#Remove whitespaces and tabs
		First_Arg_no_spaces="$(echo -e "${First_Arg}" | tr -d '[:space:]')"
		line2="$(echo -e "${line}" | tr -d '[:space:]')"
		
		if [ "$First_Arg_no_spaces" = "$line2" ]; then
			#change found value to 1
			found=1
			break;
		fi

	done < $i

	if (( $found == 1 )) ;
	then
		break;
	fi
done

#if not found, append the argument to the end of the file
if (( $found == 0 )) ;
then
	echo "$First_Arg" >> $Second_Arg
fi

