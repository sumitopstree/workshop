#!/bin/bash
free -m
sudo swapon --show
free -h
sudo fallocate -l 3G /swapfile
ls -lh /swapfile
sudo chmod 600 /swapfile
ls -lh /swapfile
sudo mkswap /swapfile
sudo swapon /swapfile
sudo swapon --show
free -h
sudo cp /etc/fstab /etc/fstab.bak
echo '/swapfile none swap sw 0 0' | sudo tee -a /etc/fstab
cat /proc/sys/vm/swappiness
echo 'vm.swappiness=10' | sudo tee -a /etc/sysctl.conf
#for cache pressure for inode and dentry over other data run below, default is 100
cat /proc/sys/vm/vfs_cache_pressure
echo 'sysctl vm.vfs_cache_pressure=50' | sudo tee -a /etc/sysctl.conf
