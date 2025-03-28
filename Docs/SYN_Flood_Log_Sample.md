# SYN Flood Log Sample

This is a simplified walkthrough of what a SYN flood attack might look like in network traffic captured by a tool like Wireshark.

---

##  Log Snapshot (Sample Packets)

| No. | Time (s) | Source IP     | Destination IP | Protocol | Info                              |
|-----|----------|---------------|----------------|----------|-----------------------------------|
| 1   | 3.144521 | 198.51.100.23 | 192.0.2.1      | TCP      | 42584 → 443 [SYN] Seq=0 Win=5792  |
| 2   | 3.195755 | 192.0.2.1     | 198.51.100.23  | TCP      | 443 → 42584 [SYN, ACK]            |
| 3   | 3.246989 | 198.51.100.23 | 192.0.2.1      | TCP      | 42584 → 443 [ACK]                 |
| 4   | 3.390692 | 203.0.113.0   | 192.0.2.1      | TCP      | 54770 → 443 [SYN]                 |
| 5   | 3.441926 | 203.0.113.0   | 192.0.2.1      | TCP      | 54771 → 443 [SYN]                 |
| 6   | 3.493160 | 203.0.113.0   | 192.0.2.1      | TCP      | 54772 → 443 [SYN]                 |
| ... | ...      | ...           | ...            | ...      | ...                               |
| 100 | 17.42967 | 192.0.2.1     | 203.0.113.0    | TCP      | 443 → 54770 [RST, ACK]            |
| 101 | 18.51001 | 192.0.2.1     | 203.0.113.0    | HTTP     | HTTP/1.1 504 Gateway Time-out     |

---

##  Wireshark Filter Used


This filter displays SYN packets without ACKs — a key indicator of a SYN flood attack.

---

##  Normal TCP Handshake vs. SYN Flood

| Step                  | Normal Connection | SYN Flood Attack |
|-----------------------|-------------------|------------------|
| Client → Server: SYN  | ✅                | ✅               |
| Server → Client: SYN-ACK | ✅             | ✅               |
| Client → Server: ACK  | ✅ (completes)    | ❌ (missing)     |

---

##  Key Indicators

- A burst of SYN packets from the same or spoofed IPs
- No follow-up ACKs to complete the handshake
- HTTP 504 and RST, ACK errors from the server

---

##  Mitigation Suggestions

- Enable SYN cookies
- Rate-limit incoming SYN requests
- Use firewalls and intrusion detection rules
- Consider cloud-based DDoS protection (e.g. Cloudflare, AWS Shield)
