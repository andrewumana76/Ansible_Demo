#!/bin/bash

#Install DHCP server software
dnf install dhcp-server -y

#enable the DHCP server
systemctl enable --now dhcp

#Overwrite the current dhcpd.conf file
\cp -rf dhcpd.conf /etc/dhcp/dhcpd.conf

#Restart DHCP service
sytemctl restart dhcpd
