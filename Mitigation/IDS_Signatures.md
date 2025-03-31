# IDS Signature Example: Detecting SYN Floods

This document provides a basic example of how an Intrusion Detection System (IDS) like Snort or Suricata might be configured to detect SYN flood attacks based on packet behavior.

---

##  Sample Snort Rule
```snort
alert tcp any any -> 192.0.2.1 443 (msg:"Potential SYN Flood"; flags:S; threshold:type both, track by_src, count 20, seconds 3; sid:1000001; rev:1;)
```

###  Explanation of Rule Components:
- `alert tcp` — Trigger an alert on TCP traffic
- `any any -> 192.0.2.1 443` — From any IP/port to IP `192.0.2.1`, port 443 (HTTPS)
- `flags:S;` — Match TCP packets with the SYN flag set (no ACK)
- `threshold:type both, track by_src, count 20, seconds 3;` — Trigger only if 20+ matching packets are seen from a single source in 3 seconds
- `msg:"Potential SYN Flood";` — Alert message shown in logs
- `sid:1000001;` — Unique Snort rule ID
- `rev:1;` — Revision number for the rule

---

##  Notes
- This rule assumes that `192.0.2.1` is the protected server.
- You can adjust `count` and `seconds` to suit your detection sensitivity.
- Too strict = false positives; too loose = missed alerts.
- IDS should be combined with firewalls and logging for best results.

---

##  For Hands-On Practice
Try testing this rule on a local VM with Snort or Suricata installed. You can simulate SYN floods using tools like:

- `hping3` — to craft custom TCP SYN packets
- `nping` — to control rate and flags

> Example test:
```bash
sudo hping3 -S -p 443 -i u1000 192.0.2.1
```

This sends SYN packets to port 443 at 1ms intervals.
