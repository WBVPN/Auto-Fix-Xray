#!/bin/bash

echo "Memulai instalasi Auto-Fix Xray..."

echo "[1/3] Mengunduh script pembersih RAM..."
wget -qO /root/clear-ram.sh "https://raw.githubusercontent.com/WBVPN/Auto-Fix-Xray/refs/heads/main/clear-ram.sh"
chmod +x /root/clear-ram.sh

echo "[2/3] Memasang jadwal otomatis (Cronjob)..."
# Mengamankan cronjob lama dan menghapus jadwal duplikat
crontab -l 2>/dev/null | grep -v "/root/clear-ram.sh" | grep -v "systemctl restart xray" > /tmp/cron_backup

# Menambahkan jadwal baru
echo "0 * * * * systemctl restart xray && systemctl restart nginx" >> /tmp/cron_backup
echo "0 */2 * * * /root/clear-ram.sh" >> /tmp/cron_backup

# Mengaktifkan jadwal
crontab /tmp/cron_backup
rm /tmp/cron_backup

echo "[3/3] Instalasi Selesai! VPS kamu sudah dirawat otomatis."
