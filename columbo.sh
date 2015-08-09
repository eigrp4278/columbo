#!/bin/bash
# script that creates a all in one openstack node using a single phisycal NIC
# create the variables file
# assign the IP for the non vagrant NAT interface
echo export eth1_ip_addr=$(ip addr | grep 'inet '| grep -v '127.0.0.1' | grep -v '10.0.2.' | cut -d/ -f1 | awk '{ print $2}') >> variables

