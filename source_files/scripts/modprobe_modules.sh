#!/bin/bash

if !(grep -r "$1" /etc/modprobe.conf 2> /dev/null || grep -r "$1.conf" /etc/modprobe.d/* 2> /dev/null) ;
then
	echo "Creating /etc/modprobe.d/$1.conf"
	cat > /etc/modprobe.d/$1.conf << EOF
install $1 /bin/$2
blacklist $1
EOF

fi
