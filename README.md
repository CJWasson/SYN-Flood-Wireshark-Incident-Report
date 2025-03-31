# SYN Flood Wireshark Incident Report

## What This Project Is About

This project walks through how I identified and documented a SYN flood attack using Wireshark. I put it together to show my ability to spot unusual traffic patterns, understand how they affect a web server, and report them clearly and professionally.

I kept everything in this repo practical and real-world focused. From the Wireshark logs to the reports, the goal was to show how I would handle a situation like this if it came across my desk in a cybersecurity role.

---

## What You'll Find in This Repo

- **Incident Overview** – A personal summary of the project, what I’m demonstrating, and what each file shows.

- **Wireshark Log** – A simplified log that shows the progression from a normal TCP handshake to a SYN flood. Includes key indicators like repeated SYN packets, missing ACKs, RSTs, and an HTTP 504 error.

- **Incident Report** – A professional-style incident report that documents the timeline, technical analysis, and response.

- **Graph-style packet log** – A visual walkthrough of the attack, recreated in table form.

- **Form-style incident report** – Located in the `/Templates` folder as an alternate, quick-reference format.

- **Mitigation Resources** – Starting with a `Firewall_Rules.md` file in the `/Mitigation` folder. These examples are included to show how a SYN flood might be mitigated at the firewall level. While I understand what these rules are doing and why they’re used, I have not personally implemented them in a production environment.

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
│   └── Firewall_Rules.md
├── Visuals/
│   └── SYN_Flood_Packet_Progression.xlsx
```

---

## Tools I Used

- **Wireshark** – for packet capture and analysis
- **Excel & Word** – for building out the visuals and formatted reports
- **Markdown & GitHub** – for documenting and organizing everything

---

If you're checking this out to learn or review my work — thanks for taking a look!
