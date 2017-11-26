#!/bin/bash

# Removes old DHCPCD leases for a chosen NET_INTERFACE

# Usage:
# ./dhcpcd-lease.sh

NET_INTERFACE="wlp7s0"

rm /var/lib/dhcpcd/dhcpcd-*
rm /etc/netctl/$NET_INTERFACE-*

systemctl restart netctl
