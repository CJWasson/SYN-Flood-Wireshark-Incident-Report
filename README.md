# SYN Flood Wireshark Incident Report

## Project Overview

This project demonstrates the identification and analysis of a SYN flood Denial-of-Service (DoS) attack using Wireshark. It simulates a real-world scenario in which a web server is overwhelmed by half-open TCP connections due to repeated SYN packets. The project includes both summary and detailed incident reports, log samples, and a breakdown of the packet flow.

A SYN flood is a type of DoS attack that exploits the TCP handshake by sending numerous SYN requests without completing the connection. This causes the server's connection queue to fill, eventually resulting in service disruption.

---

## What's Included

- A simplified Wireshark log showing SYN flood packet behavior
- A detailed enterprise-style incident report in PDF format
- A Montana-style incident report template for quick reporting
- Graph-style packet timeline illustrating handshake vs. flood
- Supporting artifacts for analysis and documentation

---

## Repository Structure

```text
SYN-Flood-Wireshark-Incident-Report/
├── README.md
├── LICENSE.md
├── Docs/
│   ├── Cybersecurity_Incident_Report_Cortex_Enterprise.pdf
│   ├── Wireshark_Log.docx
│   ├── Activity_Description.pdf
│   └── SYN_Flood_Log_Sample.md
├── Templates/
│   └── Cybersecurity_Incident_Report_Form_Cortex.pdf
├── Logs/
│   └── SYN_Flood_Log_Sample.md
├── Visuals/
│   └── SYN_Flood_Packet_Progression.xlsx
```

---

## Scenario Summary

An internal monitoring system detects performance degradation on the company’s web server. Users report connection timeout errors. Upon investigation using Wireshark, a large number of SYN packets from a suspicious IP address are discovered. These half-open connections prevent legitimate traffic from completing, indicating a SYN flood attack.

Mitigation steps include taking the server offline, blocking the attacker’s IP, and reviewing log data to confirm the attack vector.

---

## Key Indicators from the Log

- Multiple SYN packets without ACKs
- Lack of completed TCP handshakes
- HTTP 504 Gateway Timeout responses
- RST, ACK packets from server indicating dropped sessions

---

## Lessons Learned

- SYN floods can exhaust server resources quickly
- Packet capture tools like Wireshark are critical for confirmation
- SYN cookies, rate limiting, and IP filtering are key defenses
- Continuous monitoring can reduce downtime from DoS attacks

---

## Tools Used

- Wireshark – Packet analysis
- Markdown & GitHub – Documentation and publishing
- Excel & Word – Table visualization and report formatting

---

## Contact

This repository was built as part of a cybersecurity learning exercise to demonstrate practical analysis and reporting skills. For feedback or contributions, feel free to fork the project or open an issue.
