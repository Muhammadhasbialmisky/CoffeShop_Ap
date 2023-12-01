import 'package:flutter/material.dart';

class Profil extends StatefulWidget {
  const Profil({super.key});

  @override
  State<Profil> createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Profil Saya'),
          backgroundColor: Colors.brown, // Warna konteks kopi
        ),
        body: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CircleAvatar(backgroundColor: Colors.white,
                radius: 50,
                backgroundImage: AssetImage('logo/coffee.png'),
              ),
              SizedBox(height: 16.0),
              Text(
                'Nama Anda',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Email Anda',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              SizedBox(height: 16.0),
              
              ListTile(
                leading: Icon(Icons.history),
                title: Text('Riwayat Pesanan'),
                onTap: () {
                  // Navigasi ke halaman riwayat pesanan
                },
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Preferensi'),
                onTap: () {
                  // Navigasi ke halaman preferensi
                },
              ),
              ListTile(
                leading: Icon(Icons.help),
                title: Text('Bantuan'),
                onTap: () {
                  // Navigasi ke halaman bantuan
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
