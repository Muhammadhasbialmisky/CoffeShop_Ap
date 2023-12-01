import 'package:flutter/material.dart';
import 'package:myfirstflutter_app/home2_page.dart';
import 'package:url_launcher/url_launcher.dart';

class Login2Page extends StatefulWidget {
  Login2Page({super.key});

  @override
  State<Login2Page> createState() => _Login2PageState();
}

class _Login2PageState extends State<Login2Page> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        //Ini berguna ketika Anda memiliki konten yang panjang atau tidak muat dalam layar perangkat Anda sehingga perlu bisa digulir.
        child: Center(
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.network(
                  'https://seeklogo.com/images/K/kapal-api-logo-BDA931D774-seeklogo.com.png',
                  width: 200,
                  height: 200,
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 70),
                ),
                const Text(
                  'LOGIN',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                ),
                Row(
                  children: [
                    Icon(Icons.email),
                    SizedBox(width: 10),
                    Expanded(
                      child: TextFormField(
                        validator: validasiEmail,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          labelText: 'EMAIL',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                ),
                Row(
                  children: [
                    Icon(Icons.lock),
                    SizedBox(width: 10),
                    Expanded(
                      child: TextFormField(
                        validator: validasiPassword,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          labelText: 'PASSWORD',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                        obscureText: true,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Checkbox(
                          value: false,
                          onChanged: (newValue) {},
                        ),
                        Text('REMEMBER ME')
                      ],
                    ),
                    Text('FORGOT PASSWORD?')
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                ),
                ElevatedButton(
                  onPressed: () {
                    cekValidasi();
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusDirectional.circular(30)),
                    minimumSize: Size(350, 10), // Ukuran tombol
                    padding: EdgeInsets.all(16), // Padding dalam tombol
                  ),
                  child: Text('LOGIN'),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                ),
                Center(
                  child: Text('OR LOGIN WITH'),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(
                        Icons.facebook,
                        size: 40,
                      ), // Ubah ukuran ikon sesuai kebutuhan
                      onPressed: () {
                        _launchUrl();
                      },

                      color: Colors.blue, // Ubah warna ikon sesuai kebutuhan
                    ),
                    SizedBox(width: 40), // Ruang antara ikon
                    Icon(
                      Icons.android,
                      size: 40, // Ubah ukuran ikon sesuai kebutuhan
                      color: Colors.green, // Ubah warna ikon sesuai kebutuhan
                    ),
                    SizedBox(width: 40), // Ruang antara ikon
                    Icon(
                      Icons.apple,
                      size: 40, // Ubah ukuran ikon sesuai kebutuhan
                      color: Colors.black, // Ubah warna ikon sesuai kebutuhan
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 40),
                ),
                RichText(
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text: 'DONT HAVE ACCOUNT?',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: 'SIGN UP',
                        style: TextStyle(
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _launchUrl() async {
    if (!await launchUrl(
        Uri.parse('https://www.facebook.com/muhammadhasbialmisky.almisky'))) {
      throw Exception('Could not launch');
    }
  }

  String? validasiEmail(String? value) {
    String pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern);
    if (!regex.hasMatch(value!.trim()))
      return 'Enter Valid Email';
    else
      return null;
  }

//validasi untuk memeriksa panjang karakter dari inputkan password
  String? validasiPassword(String? value) {
    if (value!.length < 6) {
      return ' password harus lebih besar dari 5 karakter';
    } else {
      return null;
    }
  }

  cekValidasi() {
    if (_formKey.currentState!.validate()) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Berhasil'),
        ),
      );
      //pindahkan halaman
      Navigator.push(context,
          MaterialPageRoute(builder: (_) => Home2Page()
          )
          ); //pindahkan halaman
    }
  }
}
