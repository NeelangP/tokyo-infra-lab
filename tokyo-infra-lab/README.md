# Tokyo Infrastructure Lab: Automated System Monitor 🗼

A professional-grade Bash-based monitoring suite designed for automated server health checks and network diagnostics.

## 🛠 Features
- **Proactive Memory Monitoring**: Uses `awk` to parse system metrics and trigger warnings for low-resource states.
- **Network Layer Diagnostics**: Automated ICMP (ping) checks to verify gateway reachability and external connectivity.
- **Persistent Logging**: Generates timestamped health reports for Root Cause Analysis (RCA).
- **Headless Automation**: Configured via `crontab` for 24/7 background operation.

## 📋 Technical Implementation
- **Scripting Language**: Bash
- **Core Tools**: `awk`, `free`, `ping`, `date`, `crontab`
- **Environment**: Linux (Ubuntu/WSL2)

## 🚀 Impact
This project demonstrates the transition from manual hardware maintenance to automated infrastructure operations, aligning with Amazon's "Bias for Action" and "Ownership" principles.
