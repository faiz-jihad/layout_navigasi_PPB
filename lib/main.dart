import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // 1. Bagian Title Section
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32.0),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: const Text(
                    'Masjid Polindra',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Text(
                  'Lohbener, Indramayu, Indonesia',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          const Icon(
            Icons.star,
            color: Colors.red,
          ),
          const Text('41'),
        ],
      ),
    );

    // Menentukan warna utama untuk tombol
    Color color = Theme.of(context).primaryColor;

    // 2. Bagian Button Section
    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );

    // ========== Praktikum 4: Image Section ==========
    Widget imageSection = Image.asset(
      'images/masjid.jpeg',
      width: double.infinity,
      height: 240,
      fit: BoxFit.cover,
    );

    // 3. Bagian Text Section (Dipindahkan ke dalam method build)
    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        'Masjid Kampus Politeknik Negeri Indramayu (Polindra) merupakan '
        'pusat kegiatan spiritual dan keagamaan bagi mahasiswa serta staf. '
        'Berlokasi di area kampus Lohbener, masjid ini tidak hanya menjadi '
        'tempat ibadah harian yang nyaman, tetapi juga menjadi pusat kajian '
        'dan silaturahmi bagi seluruh civitas akademika.\n\n'
        'Oleh: Faiz Jihad Al Baihaqi - 2403078',
        softWrap: true, // Memastikan teks turun ke baris baru jika melebihi lebar layar
      ),
    );

    return MaterialApp(
      title: 'Flutter layout: faiz jihad a 2403078',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        // Menggunakan ListView agar layar bisa di-scroll
        body: ListView(
          children: [
            imageSection,
            titleSection,
            buttonSection,
            
            textSection, // Menambahkan textSection ke layar
          ],
        ),
      ),
    );
  }

  // Method helper untuk membuat tombol
  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}