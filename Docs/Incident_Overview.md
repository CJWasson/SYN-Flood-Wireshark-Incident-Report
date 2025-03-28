# Incident Overview

This is a hands-on walkthrough of how I identified and documented a SYN flood attack using Wireshark. My goal here is to show a clear, step-by-step breakdown of what I did — not just to practice analysis, but also to build a professional way to present what I’ve learned.

## What I'm Showcasing

1. **A simplified Wireshark log** that shows what normal traffic looks like, followed by the behavior of a SYN flood. It includes key indicators like repeated SYN packets, no ACKs, and error responses like RST, ACK and HTTP 504.

2. **A professional-style incident report** that walks through the timeline, technical analysis, mitigation steps, and recommendations. This is written in the format you'd expect in a SOC or enterprise environment.

3. **A one-page form-style report**, like something you might see in internal reporting or compliance use — more checklist-based, but still gets the essential facts across.

4. **A graph-style packet log**, recreated in table format, to visually walk through the transition from a successful TCP handshake to malicious traffic.

## Why I Built This

I wanted to show not only that I understand what a SYN flood is, but that I can identify one in real traffic, explain it clearly, and document it in a way that makes sense to both technical and non-technical readers.

Everything in this folder was written and structured by me to reflect how I’d contribute in a real-world incident response or cybersecurity role.
