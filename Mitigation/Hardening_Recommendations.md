# Server Hardening Recommendations for SYN Flood Prevention

This guide lists practical hardening steps to reduce the risk of SYN flood attacks and other basic network-layer DoS attempts.

These recommendations complement firewall rules, IDS detection, and monitoring efforts.

---

##  Kernel-Level Settings

###  Enable SYN Cookies
Helps mitigate SYN floods by ensuring half-open connections don't exhaust system memory.
```bash
echo 1 > /proc/sys/net/ipv4/tcp_syncookies
```

To make this persistent across reboots:
```bash
echo "net.ipv4.tcp_syncookies = 1" | sudo tee -a /etc/sysctl.conf
```

###  Reduce SYN-ACK Retries
Limits how long the server waits for handshake completion.
```bash
echo 3 > /proc/sys/net/ipv4/tcp_synack_retries
```

---

##  Connection Rate Limits

### IPTables (Rate Limiting SYNs)
```bash
iptables -A INPUT -p tcp --syn -m limit --limit 1/s --limit-burst 4 -j ACCEPT
iptables -A INPUT -p tcp --syn -j DROP
```

---

##  Network Hardening Tips

- **Close unused ports**: Only allow what’s necessary.
- **Use a reverse proxy or CDN**: Services like Cloudflare can absorb and deflect floods.
- **Implement TCP backlog tuning**: Raise the size of the backlog queue in high-traffic environments.
- **Separate public from private services**: Avoid hosting public web services on the same IP as internal resources.

---

##  Monitoring & Response

- **Enable connection tracking** (conntrack)
- **Log abnormal packet volume**
- **Set up alerts for SYN spikes** using netstat, iftop, or IDS
- **Periodically review firewall rules**

---

##  Final Thoughts
These hardening steps are a starting point. The most effective protection comes from **layered defense**: filtering at the edge, detection at the network, and policy at the host level.
