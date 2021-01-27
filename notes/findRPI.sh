#!/bin/bash

sudo nmap -sP 192.168.10.0/24 | awk '/^Nmap/{ip=$NF}/B8:27:EB/{print ip}'
