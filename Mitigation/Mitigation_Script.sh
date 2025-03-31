#!/bin/bash

# SYN Flood Mitigation Script (for learning/demo purposes)
# This script applies temporary firewall rules to reduce SYN flood impact

# Set interface and suspected malicious IP (example IP used here)
INTERFACE="eth0"
ATTACKER_IP="203.0.113.0"

# Enable SYN cookies
sysctl -w net.ipv4.tcp_syncookies=1

# Drop excessive SYN packets
iptables -A INPUT -i $INTERFACE -p tcp --syn -m limit --limit 1/s --limit-burst 4 -j ACCEPT
iptables -A INPUT -i $INTERFACE -p tcp --syn -j DROP

# Block the attacking IP address
iptables -A INPUT -s $ATTACKER_IP -j DROP

# Log the blocked attempts (optional)
iptables -A INPUT -s $ATTACKER_IP -j LOG --log-prefix "[SYN Flood Blocked] " --log-level 4

# Print confirmation
echo "SYN flood mitigation rules applied on $INTERFACE for IP $ATTACKER_IP"

# Note: Run as root or with sudo. These rules are not persistent after reboot unless saved.
# For permanent rules, use iptables-save and iptables-restore or a firewall manager.

# End of script
