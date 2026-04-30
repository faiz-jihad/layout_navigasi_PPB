# Tugas Layout Flutter - Praktikum PPB

**Identitas Mahasiswa:**
- **Nama:** Faiz Jihad Al Baihaqi
- **NIM:** 2403078

---

## 📝 Deskripsi Proyek
Proyek ini adalah implementasi dari tutorial dasar pembuatan tata letak (layout) pada Flutter. Aplikasi ini menampilkan halaman informasi destinasi wisata/tempat (Masjid Polindra) yang terdiri dari beberapa komponen utama: Gambar utama, Bagian Judul, Bagian Tombol Interaktif, dan Bagian Deskripsi Teks. Seluruh komponen dibungkus menggunakan `ListView` agar layar dapat digulir (scrollable).

---

## 📸 Bukti Praktikum dan Penjelasan Kode

Berikut adalah dokumentasi hasil pengerjaan langkah-langkah praktikum beserta penjelasan singkat mengenai komponen yang digunakan:

### 1. Langkah 1 (Setup Awal)
![Langkah 1](screenshoot/sc_langkah1.png)
**Penjelasan:** 
Tahap awal pembuatan kerangka aplikasi menggunakan `MaterialApp` dan `Scaffold`. Pada tahap ini, disiapkan `AppBar` sebagai header aplikasi dan bagian `body` dasar sebelum diisi dengan komponen layout yang lebih kompleks.

### 2. Title Section (Bagian Judul)
![Row Section](screenshoot/sc_row.png)
**Penjelasan:**
Bagian ini menggunakan `Row` untuk menyusun elemen secara horizontal. Di dalamnya terdapat:
- `Expanded` yang berisi `Column` (untuk meletakkan nama tempat dan lokasi secara vertikal). Penggunaan `Expanded` memastikan teks mengambil sisa ruang yang ada dan mendorong ikon bintang ke sisi kanan layar.
- `Icon` berbentuk bintang (`Icons.star`) berwarna merah.
- `Text` yang menampilkan angka/rating.

### 3. Button Section (Bagian Tombol)
![Button Row](screenshoot/Button_Row.png)
**Penjelasan:**
Bagian ini menggunakan `Row` dengan properti `mainAxisAlignment: MainAxisAlignment.spaceEvenly` agar ketiga tombol (CALL, ROUTE, SHARE) memiliki jarak yang seimbang. 
Untuk efisiensi kode, dibuat sebuah *helper method* bernama `_buildButtonColumn()` yang mengembalikan `Column` berisi `Icon` dan `Text`. Fungsi ini dipanggil tiga kali untuk masing-masing tombol dengan parameter ikon dan teks yang berbeda.

### 4. Text Section (Bagian Deskripsi)
![Text Section](screenshoot/Text_Section.png)
**Penjelasan:**
Bagian ini menampilkan teks deskripsi yang panjang. Teks dibungkus menggunakan `Container` untuk memberikan jarak (padding) di semua sisi sebesar 32 piksel. Properti `softWrap: true` (yang merupakan bawaan *default* Flutter) memastikan teks akan otomatis turun ke baris baru jika ukurannya melebihi lebar layar.

### 5. Image Section (Bagian Gambar Utama)
![Image Section](screenshoot/Image_section.png)
**Penjelasan:**
Menambahkan gambar di bagian paling atas layout untuk memberikan visual pada aplikasi. Gambar ini ditempatkan sebagai *child* pertama di dalam `ListView` agar berada di atas `titleSection`.

---
*Dokumentasi ini disusun untuk memenuhi tugas mata kuliah Pemrograman Perangkat Bergerak (PPB).*
