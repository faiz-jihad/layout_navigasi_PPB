import 'package:flutter/material.dart';
import '../models/item.dart';
import 'item_page.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  // Data barang (hardcode dulu)
  final List<Item> items = [
    Item(
      name: 'Sepatu Olahraga',
      price: 250000,
      imageUrl: 'images/sepatu.webp',
      stock: 10,
      rating: 4.5,
    ),
    Item(
      name: 'Tas Ransel',
      price: 180000,
      imageUrl: 'images/ransel.webp',
      stock: 5,
      rating: 4.2,
    ),
    Item(
      name: 'Jam Tangan',
      price: 350000,
      imageUrl: 'images/jam.webp',
      stock: 8,
      rating: 4.7,
    ),
    Item(
      name: 'Kacamata Hitam',
      price: 120000,
      imageUrl: 'images/km.jpg',
      stock: 15,
      rating: 4.3,
    ),
    Item(
      name: 'Power Bank',
      price: 90000,
      imageUrl: 'images/pb.jpg',
      stock: 3,
      rating: 4.0,
    ),
    Item(
      name: 'Headset Gaming',
      price: 280000,
      imageUrl: 'images/hedset.avif',
      stock: 7,
      rating: 4.6,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daftar Belanja'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,  // 2 kolom seperti marketplace
            childAspectRatio: 0.7,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/item', arguments: item);
              },
              child: Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // FOTO PRODUK DENGAN HERO ANIMATION
                    Hero(
                      tag: item.name,  // tag harus UNIK
                      child: ClipRRect(
                        borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
                        child: Image.network(
                          item.imageUrl,
                          height: 120,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    // NAMA PRODUK
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            item.name,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(height: 4),
                          // HARGA
                          Text(
                            'Rp ${item.price}',
                            style: const TextStyle(
                              color: Colors.green,
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                          ),
                          const SizedBox(height: 4),
                          // RATING & STOK
                          Row(
                            children: [
                              const Icon(Icons.star, size: 12, color: Colors.amber),
                              Text(' ${item.rating}', style: const TextStyle(fontSize: 12)),
                              const SizedBox(width: 8),
                              const Icon(Icons.inventory, size: 12),
                              Text(' ${item.stock}', style: const TextStyle(fontSize: 12)),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
    bottomNavigationBar: BottomAppBar(
      color: Colors.blue,
      child: Container(
        height: 40,
        alignment: Alignment.center,
        child: Text(
          'Faiz Jihad A - 2403078',  // GANTI dengan nama dan NIM asli
          style: const TextStyle(
            color: Colors.white,
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}