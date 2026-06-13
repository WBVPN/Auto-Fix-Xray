# 🚀 Auto Maintenance Script for VPN VPS (Xray/V2ray)

Solusi ampuh dan ringan untuk mengatasi masalah V2Ray/Xray yang sering mengalami *stuck* atau *unable to connect* setelah beberapa jam berjalan. Sistem ini bekerja otomatis untuk me-refresh koneksi dan membersihkan RAM tanpa perlu me-reboot VPS.

## 🛠️ Fitur Utama
1. **Auto Restart Service (Tiap 1 Jam):** Menjaga koneksi tetap *fresh*.
2. **Auto Clear RAM & Log (Tiap 2 Jam):** Membersihkan *cache* RAM agar server tidak *overload*.
3. **Anti Duplicate Cron:** Aman meskipun di-install berulang kali.

---

## 📖 Cara Pemasangan (Sangat Mudah)

Cukup *copy* dan *paste* perintah di bawah ini ke terminal VPS kamu, lalu tekan **Enter**. Script akan berjalan dan memasang semuanya secara otomatis:

```bash
wget -qO- https://raw.githubusercontent.com/WBVPN/Auto-Fix-Xray/refs/heads/main/install.sh | bash
```

---

## 🔍 Cara Cek Status Pemasangan

Untuk memastikan sistem sudah berjalan di VPS kamu, gunakan dua perintah ini:

1. **Cek Jadwal (Cronjob):**
```bash
   crontab -l
   ```
   *(Pastikan ada baris `clear-ram.sh` dan `restart xray` di bagian paling bawah).*

2. **Cek Bukti Pembersihan RAM:**
```bash
   cat /root/clear-ram.log
   ```
   *(Catatan: Log ini baru akan muncul setelah script melewati jam genap pertamanya, misalnya jam 10:00, 12:00, dst).*

---

## 🗑️ Cara Uninstall (Hapus Script)

Jika sewaktu-waktu ingin menghapus script dan mencabut jadwal otomatisnya dari VPS (tanpa mengganggu settingan VPS lainnya), jalankan perintah ini:

```bash
crontab -l | grep -v "/root/clear-ram.sh" | grep -v "systemctl restart xray" | crontab - && rm -f /root/clear-ram.sh /root/clear-ram.log && echo "Uninstall Selesai!"
```
