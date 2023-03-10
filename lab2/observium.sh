#!/bin/bash

ip addr add 10.10.10.2/24 dev eth1
ip route add 1.1.1.0/24 via 10.10.10.1

sleep 20

/opt/observium/adduser.php lab2 lab2 10

/opt/observium/add_device.php 1.1.1.1 lab2 v2c
/opt/observium/add_device.php 1.1.1.2 lab2 v2c
/opt/observium/add_device.php 1.1.1.3 lab2 v2c

/opt/observium/poller.php -h 1.1.1.*
