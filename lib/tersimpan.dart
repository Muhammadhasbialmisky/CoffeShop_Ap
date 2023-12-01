import 'package:flutter/material.dart';

class Tersimpan extends StatefulWidget {
  @override
  State<Tersimpan> createState() => _BookmarkPageState();
}

class _BookmarkPageState extends State<Tersimpan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bookmark'),
        backgroundColor: Colors.brown, // Warna konteks coffee shop
      ),
      body: ListView(
        children: <Widget>[
          namadanharga(
            itemName: 'Espresso',
            itemPrice: 'Rp 10.000',
          ),
          namadanharga(
            itemName: 'Cappuccino',
            itemPrice: 'Rp 15.000',
          ),
          namadanharga(
            itemName: 'Macha',
            itemPrice: 'Rp 20.000',
          ),
          namadanharga(
            itemName: 'Latte',
            itemPrice: 'Rp 25.000',
          ),
          namadanharga(
            itemName: 'Americano',
            itemPrice: 'Rp 15.000',
          ),
          // Tambahkan item bookmark lainnya di sini
        ],
      ),
    );
  }
}

class namadanharga extends StatelessWidget {
  final String itemName;
  final String itemPrice;

  namadanharga({required this.itemName, required this.itemPrice});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      child: ListTile(
        leading: Icon(Icons.bookmark, color: Colors.brown), // Ikon bookmark
        title: Text(itemName),
        subtitle: Text('Harga: $itemPrice'),
        onTap: () {
          // Aksi ketika item bookmark diklik
        },
      ),
    );
  }
}
