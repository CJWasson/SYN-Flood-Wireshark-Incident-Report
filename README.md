# SYN Flood Wireshark Incident Report

## What This Project Is About

This project walks through how I identified and documented a SYN flood attack using Wireshark. I put it together to show my ability to spot unusual traffic patterns, understand how they affect a web server, and report them clearly and professionally.

I kept everything in this repo practical and real-world focused. From the Wireshark logs to the reports, the goal was to show how I would handle a situation like this if it came across my desk in a cybersecurity role.

---

## What You'll Find in This Repo

- **Incident Overview** – A personal summary of the project, what I’m demonstrating, and what each file shows.
- **Wireshark Log** – A simplified log that shows the progression from a normal TCP handshake to a SYN flood. Includes key indicators like repeated SYN packets, missing ACKs, RSTs, and an HTTP 504 error.
- **Incident Report** – A professional-style incident report that documents the timeline, technical analysis, and response.
- **Graph-style Packet Progression** – A written walkthrough in `Packet_Progression.md` that explains each stage of the SYN flood.
- **Form-style Incident Report** – Located in the `/Templates` folder as an alternate, quick-reference format.
- **Mitigation Resources** – Includes firewall rules, a shell script, IDS signatures, and hardening tips to help reduce the impact of SYN floods. These examples are included to demonstrate my understanding of layered defense, though I haven’t implemented all of them in a production environment.

---

## Repo Layout

```text
SYN-Flood-Wireshark-Incident-Report/
├── README.md
├── LICENSE.md
├── Docs/
│   ├── Incident_Overview.md
│   ├── Wireshark_Log.docx
│   ├── Cybersecurity_Incident_Report_Cortex_Enterprise.pdf
│   └── SYN_Flood_Log_Sample.md
├── Templates/
│   └── Cybersecurity_Incident_Report_Form_Cortex.pdf
├── Mitigation/
│   ├── Firewall_Rules.md
│   ├── Mitigation_Script.sh
│   ├── IDS_Signatures.md
│   └── Hardening_Recommendations.md
├── Visuals/
│   └── Packet_Progression.md
```

---

## Tools I Used

- **Wireshark** – for packet capture and analysis
- **Excel & Word** – for building out the visuals and formatted reports
- **Markdown & GitHub** – for documenting and organizing everything
- **Bash & IPTables** – for learning the basics of mitigation scripting

---

If you're checking this out to learn or review my work — thanks for taking a look!
