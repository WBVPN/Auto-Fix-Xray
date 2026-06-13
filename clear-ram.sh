#!/bin/bash

# Bersihkan cache RAM agar memori kembali lega
sync; echo 3 > /proc/sys/vm/drop_caches

# Bersihkan log Xray agar tidak menumpuk dan memakan storage
> /var/log/xray/access.log
> /var/log/xray/error.log

# Bersihkan log sistem yang sudah lama (lebih dari 1 hari)
journalctl --vacuum-time=1d

echo "Pembersihan RAM dan Log selesai pada $(date)" >> /root/clear-ram.log
