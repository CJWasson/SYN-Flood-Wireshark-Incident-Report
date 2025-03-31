# TCP Packet Progression: From Handshake to SYN Flood

This visual and summary illustrate how a TCP connection begins normally, and how it breaks down during a SYN flood attack. It’s designed to help visualize the stages of connection — from handshake to server overload.

---

## 🧩 What You’re Looking At
- The included Excel sheet and image represent captured packet traffic.
- It shows a **normal TCP three-way handshake** transitioning into a **SYN flood**.

---

## 🔄 Normal Flow (Rows 1–5)
| Step | Description                      |
|------|----------------------------------|
| 1    | Client sends SYN                |
| 2    | Server replies with SYN, ACK    |
| 3    | Client replies with ACK         |
| 4    | HTTP GET is made                |
| 5    | Server responds with 200 OK     |

✅ This shows a successful connection and content retrieval.

---

## 🚨 SYN Flood Begins (Rows 6+)
| Step | Description                                |
|------|--------------------------------------------|
| 6+   | Repeated SYNs from one/multiple IPs        |
| –    | No ACKs received (handshake not completed) |
| –    | Server sends RST, ACK or times out         |

⚠️ The server becomes overloaded with half-open connections, eventually returning errors like:
- `RST, ACK` (reset) — drops the session
- `HTTP 504` — gateway timeout

---

## 📁 Files in Visuals/
- `Packet_Progression.md
