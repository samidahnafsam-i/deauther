# Deauther

A simple Bash-based Wi-Fi deauthentication automation script built with Aircrack-ng tools for wireless security testing and educational demonstrations.

> ⚠️ This project is intended only for authorized security testing and educational purposes on networks you own or have explicit permission to assess.

---

## Features

- Detect available wireless interfaces
- Enable monitor mode automatically
- Scan nearby Wi-Fi networks
- Select target BSSID and channel
- Launch deauthentication testing
- Restore interface back to managed mode
- Simple terminal UI with banner output

---

## Requirements

Install the following tools before running:

- Bash
- aircrack-ng
- net-tools

### Kali Linux / Debian

```bash
sudo apt update
sudo apt install aircrack-ng net-tools -y
```

---

## Usage

Clone the repository:

```bash
git clone git@github.com:samidahnafsam-i/deauther.git
cd deauther
```

Make the script executable:

```bash
chmod +x deauther.sh
```

Run the script:

```bash
sudo ./deauther.sh
```

---

## Workflow

The script performs the following steps:

1. Checks for root privileges
2. Lists available network interfaces
3. Enables monitor mode
4. Scans nearby wireless networks
5. Prompts for:
   - Target BSSID
   - Channel number
6. Starts focused monitoring
7. Sends deauthentication packets
8. Restores interface state

---

## Example Interface

```text
 ██████╗ ███████╗ █████╗ ██╗   ██╗████████╗██╗  ██╗███████╗██████╗
 ██╔══██╗██╔════╝██╔══██╗██║   ██║╚══██╔══╝██║  ██║██╔════╝██╔══██╗
 ██║  ██║█████╗  ███████║██║   ██║   ██║   ███████║█████╗  ██████╔╝
 ██║  ██║██╔══╝  ██╔══██║██║   ██║   ██║   ██╔══██║██╔══╝  ██╔══██╗
 ██████╔╝███████╗██║  ██║╚██████╔╝   ██║   ██║  ██║███████╗██║  ██║
 ╚═════╝ ╚══════╝╚═╝  ╚═╝ ╚═════╝    ╚═╝   ╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝

[ ! ] wifi deauthentication tool | use responsibly | educational purposes only
```

---

## Notes

- Requires a wireless adapter that supports monitor mode and packet injection
- Some adapters may require additional drivers
- Works best on:
  - Kali Linux
  - Parrot OS
  - Ubuntu

---

## Disclaimer

The author is not responsible for misuse or damage caused by this project. Use responsibly and only in environments where you have authorization.

---

## Author

GitHub: https://github.com/samidahnafsam-i
