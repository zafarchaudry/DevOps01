#!/bin/bash
vol=$(df -h)
echo -e "$vol\n"
echo
cpu=$(cat /proc/cpuinfo)
echo -e "$cpu\n"
echo
mem=$(cat /proc/meminfo)
echo -e "$mem\n"
echo
ip_mac=$(ipconfig -all | egrep "IPv4|Physi")
echo -e "$ip_mac\n"
echo
