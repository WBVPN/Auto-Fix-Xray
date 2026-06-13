# Auto-Fix-Xray
Script otomatis untuk mengatasi V2Ray unable to connect

# 🚀 Auto Maintenance Script for VPN VPS (Xray/V2ray)

Solusi ampuh dan ringan untuk mengatasi masalah V2Ray/Xray yang sering mengalami *stuck* atau *unable to connect* setelah beberapa jam berjalan. Sistem ini bekerja otomatis untuk me-refresh koneksi dan membersihkan RAM tanpa perlu me-reboot VPS.

## 🛠️ Fitur Utama
1. **Auto Restart Service (Tiap 1 Jam):** Menjaga koneksi tetap *fresh*.
2. **Auto Clear RAM & Log (Tiap 2 Jam):** Membersihkan *cache* RAM agar server tidak *overload*.
3. **Anti Duplicate Cron:** Aman meskipun di-install berulang kali.

---

## 📖 Cara Pemasangan (Sangat Mudah)

Cukup *copy* dan *paste* perintah pendek di bawah ini ke terminal VPS kamu, lalu tekan **Enter**. Script akan berjalan dan memasang semuanya secara otomatis:

```bash
wget -qO- [https://raw.githubusercontent.com/WBVPN/Auto-Fix-Xray/refs/heads/main/install.sh](https://raw.githubusercontent.com/WBVPN/Auto-Fix-Xray/refs/heads/main/install.sh) | bash
