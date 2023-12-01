import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              'BERANDA',
              style: TextStyle(
                color: Colors.blue, // Warna teks Biru
              ),
            ),
          ),
          backgroundColor: Colors.white,
          // Warna latar belakang Putih
        ),
        body: Column(
          children: [
            Container(
              // Warna latar belakang Merah
              padding: EdgeInsets.all(20.0),
              child: Image.network(
                'https://www.google.com/images/branding/googlelogo/2x/googlelogo_light_color_92x30dp.png',
                height: 100.0, // Tinggi gambar
                width: 250.0, // Lebar gambar
                color: Colors.red, // Warna gambar Merah
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Nama: MUHAMMAD HASBI ALMISKY',
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                  Text(
                    'Usia: 17 TAHUN 9 BULAN',
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                  Text(
                    'Agama:ISLAM',
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                  Text(
                    'Jenis Kelamin:LAKI LAKI',
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text("oke"),
                    style: ElevatedButton.styleFrom(primary: Colors.green),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
