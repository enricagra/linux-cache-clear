# Linux Cache Clear

A collection of bash scripts to efficiently clear various types of caches on Linux systems (Debian/Ubuntu and RHEL/CentOS/Fedora).

## Overview

This repository contains utility scripts designed to help you manage and clear system caches, improving performance and freeing up disk space on your Linux machines.

## Scripts

### 1. `clear-cache.sh` - Debian/Ubuntu Cache Clearer
A comprehensive cache clearing script optimized for Debian and Ubuntu systems.

**What it clears:**
- APT package manager cache
- System memory cache (RAM)
- Swap memory
- DNS cache (systemd-resolved)
- Thumbnail cache
- Old system logs (default: 2 days)

**Usage:**
```bash
chmod +x clear-cache.sh
./clear-cache.sh
```

### 2. `cache-clear-rhel` - Red Hat/CentOS/Fedora Cache Clearer
A cache clearing script optimized for Red Hat-based systems.

**What it clears:**
- DNF/YUM package manager cache
- System memory cache (RAM)
- Swap memory
- DNS cache (nscd service)
- Thumbnail cache
- Old system logs (default: 2 days)

**Usage:**
```bash
chmod +x cache-clear-rhel
./cache-clear-rhel
```

## Requirements

- Linux operating system (Debian/Ubuntu for `clear-cache.sh`, RHEL/CentOS/Fedora for `cache-clear-rhel`)
- sudo privileges for executing privileged operations

## Installation

1. Clone the repository:
```bash
git clone https://github.com/enricagra/linux-cache-clear.git
cd linux-cache-clear
```

2. Make scripts executable:
```bash
chmod +x clear-cache.sh
chmod +x cache-clear-rhel
```

3. Run the appropriate script for your system:
   - **For Debian/Ubuntu:** `./clear-cache.sh`
   - **For RHEL/CentOS/Fedora:** `./cache-clear-rhel`

## What Gets Cleared

| Component | Description |
|-----------|-------------|
| Package Cache | APT (Debian/Ubuntu) or DNF/YUM (RHEL-based) |
| System Memory | Kernel caches and buffers |
| Swap Memory | Virtual memory cache |
| DNS Cache | Domain name system cached entries |
| Thumbnails | Cached image thumbnails |
| System Logs | Old journal entries (>2 days) |

## ⚠️ Important Notes

- **Requires sudo:** These scripts require superuser privileges to clear system caches
- **Be cautious:** Clearing caches may temporarily impact performance on first access to cleared data
- **Backup first:** Always ensure important data is backed up before running these scripts
- **Root access:** Run with appropriate permissions only when necessary

## License

This project is open source. Feel free to use, modify, and distribute these scripts as needed.

## Contributing

Contributions are welcome! Feel free to submit issues or pull requests to improve these scripts.

## Support

For issues or questions, please open an issue on the [GitHub repository](https://github.com/enricagra/linux-cache-clear/issues).