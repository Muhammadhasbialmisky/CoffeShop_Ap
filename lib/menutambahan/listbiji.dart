import 'package:flutter/material.dart';

class ListBiji extends StatefulWidget {
  const ListBiji({super.key});

  @override
  State<ListBiji> createState() => _ListBijiState();
}

class _ListBijiState extends State<ListBiji> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFE0B2),
      body: Padding(
        padding: const EdgeInsets.only(top: 100),
        child: GridView.count(
          crossAxisCount: 2,
          padding: EdgeInsets.all(25),
          children: [
            Kartu(
              nama: 'ini adalah coffe',
              gambar: 'image/coffee-beans__1_-removebg-preview.png',
              elevation: '8',
              subnama: 'Contoh',
            ),
            Kartu(
              nama: 'ini adalah coffe 2',
              gambar: 'image/coffee-beans__1_-removebg-preview.png',
              elevation: '8',
              subnama: 'Contoh',
            ),
            Kartu(
              nama: 'ini adalah coffe 3',
              gambar: 'image/coffee-beans__1_-removebg-preview.png',
              elevation: '8',
              subnama: 'Contoh',
            ),
            Kartu(
              nama: 'ini adalah coffe 4',
              gambar: 'image/coffee-beans__1_-removebg-preview.png',
              elevation: '8',
              subnama: 'Contoh',
            ),
            Kartu(
              nama: 'ini adalah coffe 5',
              gambar: 'image/coffee-beans__1_-removebg-preview.png',
              elevation: '8',
              subnama: 'Contoh',
            ),
            Kartu(
              nama: 'ini adalah coffe 6',
              gambar: 'image/coffee-beans__1_-removebg-preview.png',
              elevation: '8',
              subnama: 'Contoh',
            ),
            Kartu(
              nama: 'ini adalah coffe 7',
              gambar: 'image/coffee-beans__1_-removebg-preview.png',
              elevation: '8',
              subnama: 'Contoh',
            ),
            Kartu(
              nama: 'ini adalah coffe 8',
              gambar: 'image/coffee-beans__1_-removebg-preview.png',
              elevation: '8',
              subnama: 'Contoh',
            ),
            Kartu(
              nama: 'ini adalah coffe 9',
              gambar: 'image/coffee-beans__1_-removebg-preview.png',
              elevation: '8',
              subnama: 'Contoh',
            ),
            Kartu(
              nama: 'ini adalah coffe 10',
              gambar: 'image/coffee-beans__1_-removebg-preview.png',
              elevation: '8',
              subnama: 'Contoh',
            ),
          ],
        ),
      ),
    );
  }
}

class Kartu extends StatelessWidget {
  final String gambar;
  final String nama;
  final String elevation;
  final String subnama;
  const Kartu({
    super.key,
    required this.gambar,
    required this.nama,
    required this.elevation,
    required this.subnama,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      color: Color(0xFF8D6E63),
      margin: EdgeInsets.all(8),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              gambar,
              height: 80,
              width: 80,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              nama,
              style: TextStyle(fontSize: 15),
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                  size: 20,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
