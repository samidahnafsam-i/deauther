Deauther

A simple Bash-based Wi-Fi deauthentication automation script built with Aircrack-ng tools for wireless security testing and educational demonstrations.

⚠️ This project is intended only for authorized security testing and educational purposes on networks you own or have explicit permission to assess. Unauthorized disruption of wireless networks may violate laws and regulations.

Features
Detect available wireless interfaces
Enable monitor mode automatically
Scan nearby Wi-Fi networks
Select target BSSID and channel
Launch deauthentication testing
Restore interface back to managed mode
Simple terminal UI with banner output
Requirements

Install the following tools before running:

Bash
aircrack-ng
net-tools
Kali Linux / Debian
sudo apt update
sudo apt install aircrack-ng net-tools -y
Usage

Clone the repository:

git clone git@github.com:samidahnafsam-i/deauther.git
cd deauther

Make the script executable:

chmod +x deauther.sh

Run the script with root privileges:

sudo ./deauther.sh
Workflow

The script performs the following steps:

Checks for root privileges
Lists available network interfaces
Enables monitor mode
Scans nearby wireless networks
Prompts for:
Target BSSID
Channel number
Starts focused monitoring
Sends deauthentication packets
Restores interface state
Screenshot

Example terminal interface:

 ██████╗ ███████╗ █████╗ ██╗   ██╗████████╗██╗  ██╗███████╗██████╗ 
 ██╔══██╗██╔════╝██╔══██╗██║   ██║╚══██╔══╝██║  ██║██╔════╝██╔══██╗
 ██║  ██║█████╗  ███████║██║   ██║   ██║   ███████║█████╗  ██████╔╝
 ██║  ██║██╔══╝  ██╔══██║██║   ██║   ██║   ██╔══██║██╔══╝  ██╔══██╗
 ██████╔╝███████╗██║  ██║╚██████╔╝   ██║   ██║  ██║███████╗██║  ██║
 ╚═════╝ ╚══════╝╚═╝  ╚═╝ ╚═════╝    ╚═╝   ╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝
[ ! ] wifi deauthentication tool  |  use responsibly  |  educational purposes only
────────────────────────────────────────────────────────────
interface    interface2
mode         managed
status       running..


1. docker0:
2. lo:
3. wlan0:
[*]enabling monitor mode chose the name of a interface:




Notes
Requires a wireless adapter that supports monitor mode and packet injection
Some adapters may require additional drivers
Works best on Linux distributions such as:
Kali Linux
Parrot OS
Ubuntu
Disclaimer

The author is not responsible for misuse or damage caused by this project. Use responsibly and only in environments where you have authorization.

Author

GitHub: samidahnafsam-i
