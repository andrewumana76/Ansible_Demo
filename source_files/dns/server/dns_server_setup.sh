#!/bin/bash

#Install the BIND DNS Server packages
dnf -y install bind* 2> /dev/null

#Firewall exceptions
firewall-cmd --permanent --zone=public --add-service=dns
firewall-cmd --reload

#Copy the already configured DNS files locally
\cp -rf named.conf /etc/named.conf
\cp -rf named.rfc1912.zones /etc/named.rfc1912.zones
\cp -rf ../shared/resolv.conf /etc/resolv.conf
\cp -rf ../shared/NetworkManager.conf /etc/NetworkManager/NetworkManager.conf
\cp -rf forward.zone /var/named/forward.zone
\cp -rf reverse.zone /var/named/reverse.zone


#Reload the services
systemctl reload NetworkManager
firewall-cmd --reload

#Start the named service
systemctl enable named

#named permissions
chgrp named /var/named/forward.zone
chgrp named /var/named/reverse.zone

#Reload named service
systemctl reload named
