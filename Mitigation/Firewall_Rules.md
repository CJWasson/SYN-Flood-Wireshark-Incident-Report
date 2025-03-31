# Basic Firewall Rules to Mitigate SYN Flood Attacks

These are sample firewall rules and configurations designed to reduce the risk of SYN flood attacks. They are provided for learning and testing purposes and should be tuned for your specific environment.

> **Note**: These rules are included to demonstrate how a SYN flood might be mitigated at the firewall level. While I understand what these rules are doing and why they’re used, I have not personally implemented them in a production environment.

---

##  Linux with IPTables

### 1. Drop excessive incoming SYN packets
```bash
iptables -A INPUT -p tcp --syn -m limit --limit 1/s --limit-burst 4 -j ACCEPT
iptables -A INPUT -p tcp --syn -j DROP
```

### 2. Enable SYN cookies (kernel-level mitigation)
```bash
echo 1 > /proc/sys/net/ipv4/tcp_syncookies
```

### 3. Block a specific IP suspected of a SYN flood
```bash
iptables -A INPUT -s 203.0.113.0 -j DROP
```

---

##  UFW (Uncomplicated Firewall on Ubuntu)

### 1. Rate limit new connections
```bash
sudo ufw limit ssh/tcp
sudo ufw limit 80/tcp
sudo ufw limit 443/tcp
```

### 2. Block known malicious IPs
```bash
sudo ufw deny from 203.0.113.0
```

---

##  Firewall Best Practices

- **Log dropped packets** for visibility  
- **Set connection limits** based on service  
- **Use external DDoS protection** (e.g., Cloudflare, AWS Shield)  
- **Combine firewall rules with IDS/IPS** for layered defense

---

> ✅ These are defensive measures, not cures. SYN floods often come from spoofed IPs, so your long-term strategy should include traffic shaping, rate limiting, and upstream filtering.

