# Basic Firewall Rules to Mitigate SYN Flood Attacks

These are sample firewall rules and configurations designed to reduce the risk of SYN flood attacks. They are provided for learning and testing purposes and should be tuned for your specific environment.

> **Note**: These rules are included to demonstrate how a SYN flood might be mitigated at the firewall level. While I understand what these rules are doing and why they’re used, I have not personally implemented them in a production environment.

---

## 🔹 Linux with IPTables

### 1. Drop excessive incoming SYN packets
```bash
iptables -A INPUT -p tcp --syn -m limit --limit 1/s --limit-burst 4 -j ACCEPT
iptables -A INPUT -p tcp --syn -j DROP
