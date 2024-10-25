#!/bin/bash

# Clear APT cache
echo "Clearing APT cache..."
sudo apt-get clean
sudo apt-get autoclean

# Clear System Memory Cache (RAM)
echo "Clearing system memory cache..."
sudo sync
sudo sh -c 'echo 3 > /proc/sys/vm/drop_caches'

# Clear Swap Memory
echo "Clearing swap memory..."
sudo swapoff -a
sudo swapon -a

# Clear DNS Cache
echo "Clearing DNS cache..."
sudo systemctl restart systemd-resolved

# Clear Thumbnail Cache
echo "Clearing thumbnail cache..."
rm -rf ~/.cache/thumbnails/*

# Clear Logs (Optional)
echo "Clearing old logs..."
sudo journalctl --vacuum-time=2d

echo "All cache cleared!"
