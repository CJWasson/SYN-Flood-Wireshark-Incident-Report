# SYN Flood Wireshark Incident Report

## Project Overview

This project simulates and analyzes a SYN flood Denial-of-Service (DoS) attack using Wireshark. It was completed as part of a cybersecurity training exercise to demonstrate the ability to identify, investigate, and respond to abnormal network traffic patterns.

A SYN flood attack exploits the TCP handshake by sending a high volume of SYN packets to a server without completing the connection, leaving the server overwhelmed with half-open connections. This prevents legitimate users from accessing web services and can cause serious service disruption.

---

## What's Included

- A sample Wireshark TCP/HTTP log showing the SYN flood in progress
- A cybersecurity incident report summarizing the attack and response
- Supporting documentation to help interpret TCP packet data
- Key lessons on detecting and mitigating DoS attacks

---

## Repository Structure

```text
SYN-Flood-Wireshark-Incident-Report/
├── README.md
├── Docs/
│   ├── Cybersecurity_Incident_Report.pdf
│   ├── How_to_Read_Wireshark_Log.pdf
│   └── Activity_Description.pdf
├── Logs/
│   └── SYN_Flood_Log_Sample.md
├── Visuals/
│   └── SYN_Flood_Packet_Example.png
├── Templates/
│   └── Incident_Report_Template.pdf
```

---

## Scenario Summary

One afternoon, the company's monitoring system reported issues with the web server. Employees received connection timeout errors when trying to access the internal sales webpage. Wireshark was used to analyze traffic to and from the server, revealing a flood of SYN packets from a suspicious IP address.

The server became overwhelmed and was unable to respond to legitimate traffic — a clear indicator of a SYN flood DoS attack.

---

## Key Indicators from the Log

- Repeated SYN packets from the attacker (203.0.113.0)
- No completion of TCP handshakes (missing ACKs)
- Rising number of [RST, ACK] and HTTP 504 Gateway Timeout responses

---

## Lessons Learned

- SYN flood attacks can quickly disrupt web services.
- Packet sniffers like Wireshark help confirm the nature of an attack.
- Mitigation can include SYN cookies, rate limiting, and IP filtering.
- Layered security and network monitoring are essential to respond to DoS events.

---

## Tools Used

- Wireshark – For packet analysis
- Markdown & GitHub – For documentation and publishing

---

## Contact

This repository is part of a cybersecurity learning project. For questions or feedback, feel free to open an issue or fork the project.
