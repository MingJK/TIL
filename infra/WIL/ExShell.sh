#!/bin/bash

echo "=== CPU ==="
top -bn1 | grep "Cpu(s)"
echo "=== Memory ==="
free -h
echo "=== Disk ==="
df -hT | grep -v tmpfs
echo "=== Top 5 processes ==="
ps aux --sort=-%cpu | head -6
