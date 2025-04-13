# Auto APT Maintenance Script

This script automates basic APT maintenance tasks on Debian-based systems like Ubuntu. It updates packages, cleans up cache, and removes unnecessary dependencies — all with one simple command. The script has been made for running it without password prompt.

## What It Does

- Updates package lists
- Upgrades installed packages
- Cleans APT cache and obsolete files
- Removes unneeded packages

---

## Installation

1. **Clone this repo:**
```bash
git clone https://github.com/ilias37/Auto-Update.git
cd Auto-Update
```

2. **Make the script executable:**
```bash
chmod +x update.sh
```

3. **Open the sudoers file using visudo**
```bash
sudo visudo
```

4. **Scroll to the bottom and add the line**
```bash
your_username ALL=(ALL) NOPASSWD: /usr/bin/apt, /usr/bin/apt-get, /usr/bin/dpkg
```
Replace your_username with your actual Linux username.
Save and exit.

5. **Run the script:**
```bash
./update.sh
```
