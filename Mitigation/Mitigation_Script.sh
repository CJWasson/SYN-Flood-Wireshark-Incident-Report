#!/bin/bash
# SYN Flood Mitigation Script (Learning Use Only)
# -----------------------------------------------
# This script is intended for educational purposes to show how a system admin
# might respond to signs of a SYN flood attack. It includes basic commands
# for blocking an IP and enabling system-level protections.

# Log start time
echo "[+] Starting SYN flood mitigation at $(date)"

# Define the suspicious IP (example IP)
MALICIOUS_IP="203.0.113.0"

# Block the IP using iptables
echo "[+] Blocking IP: $MALICIOUS_IP"
sudo iptables -A INPUT -s $MALICIOUS_IP -j DROP

# Enable SYN cookies
if [ -f /proc/sys/net/ipv4/tcp_syncookies ]; then
  echo "[+] Enabling TCP SYN cookies"
  echo 1 | sudo tee /proc/sys/net/ipv4/tcp_syncookies > /dev/null
else
  echo "[-] tcp_syncookies setting not found"
fi

# Optional: Limit SYN rate (adjust values as needed)
echo "[+] Adding SYN rate limit rules"
sudo iptables -A INPUT -p tcp --syn -m limit --limit 1/s --limit-burst 4 -j ACCEPT
sudo iptables -A INPUT -p tcp --syn -j DROP

# Done
echo "[+] Mitigation steps completed at $(date)"

