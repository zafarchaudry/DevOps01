#!/bin/bash
vol=$(df -h)
echo -e "$vol\n"
cpu=$(cat /proc/cpuinfo)
echo -e "$cpu\n"
mem=$(cat /proc/meminfo)
echo -e "$mem\n"
ip_mac=$(ipconfig -all | egrep "IPv4|Physi")
echo -e "$ip_mac\n"

