import 'package:flutter/material.dart';
import 'package:myfirstflutter_app/menutambahan/listbiji.dart';
import 'package:myfirstflutter_app/menutambahan/listgelas.dart';
import 'package:myfirstflutter_app/menutambahan/listkopi.dart';
import 'package:myfirstflutter_app/profil.dart';
import 'package:myfirstflutter_app/tersimpan.dart';

class Home2Page extends StatefulWidget {
  const Home2Page({super.key});
  @override
  State<Home2Page> createState() => _Home2PageState();
}

class _Home2PageState extends State<Home2Page> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey,
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: 'home'),
            BottomNavigationBarItem(
                icon: IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Tersimpan(),
                          ));
                    },
                    icon: Icon(Icons.bookmark)),
                label: 'tersimpan'),
            BottomNavigationBarItem(
                icon: IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Profil(),
                        ));
                  },
                  icon: Icon(Icons.person),
                ),
                label: 'Profil'),
          ],
        ),
        // backgroundColor: Colors.grey,
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                      height: 140,
                      width: double.infinity,
                      color: Colors.brown,
                    ),
                     Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    alignment: Alignment.topLeft,
                                    height: 45,
                                    width: 45,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'image/pngtree-coffee-logo-design-vector-image_337940-removebg-preview.png')),
                                      borderRadius: BorderRadius.circular(25),
                                      border: Border.all(
                                        color: Colors.white,
                                        style: BorderStyle.solid,
                                        width: 2,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'Halo Hasbi, Selamat datang !',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                alignment: Alignment.topRight,
                                child: Icon(
                                  Icons.notifications_active,
                                  color: Colors.white,
                                  size: 30,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: Container(
                            height: 60,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(30)),
                            child: TextField(
                              cursorHeight: 20,
                              autofocus: false,
                              decoration: InputDecoration(
                                  hintText: 'Cari minuman favoritmu !',
                                  prefixIcon: Icon(Icons.search),
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.grey, width: 2),
                                      borderRadius: BorderRadius.circular(30))),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: ((context) => ListKopiPage())));
                      },
                      child: kartu(
                        imagepath: 'logo/coffee.png',
                        teks: 'kopi',
                      ),
                    ),
                    kartu(
                      imagepath: 'logo/coffee-machine.png',
                      teks: 'mesin',
                    ),
                    GestureDetector(
                        onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: ((context) => ListGelas())));
                      },
                      child: kartu(
                        imagepath: 'logo/coffee (1).png',
                        teks: 'gelas',
                      ),
                    ),
                    GestureDetector(
                        onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: ((context) => ListBiji())));
                      },
                      child: GestureDetector(
                         onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: ((context) => ListBiji())));
                      },
                        child: kartu(
                          imagepath: 'logo/coffee-beans.png',
                          teks: 'biji',
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    'Kedai Favorit☕️',
                  ),
                ),
                Coffeshop(
                  imagepath: 'image/jessica-lewis-Am2kjOEKADs-unsplash.jpg',
                  namatoko: 'kedai kopi saya',
                  rating: '4.5',
                  jambuka: '10.00-11-00',
                ),
                Coffeshop(
                  imagepath: 'image/kevin-schmid-ftA71vetxuo-unsplash.jpg',
                  namatoko: 'kedai kopi saya 2',
                  rating: '3.5',
                  jambuka: '10.00-12-00',
                ),
                Coffeshop(
                  imagepath: 'image/nathan-dumlao-KixfBEdyp64-unsplash.jpg',
                  namatoko: 'kedai kopi saya 3',
                  rating: '4.5',
                  jambuka: '10.00-13-00',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class kartu extends StatelessWidget {
  final String imagepath;
  final String teks;
  const kartu({super.key, required this.imagepath, required this.teks});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Container(
          width: 50,
          height: 50,
          child: Column(
            children: [
              Image.asset(
                imagepath,
                width: 30,
                height: 30,
              ),
              Text(teks)
            ],
          ),
        ),
      ),
    );
  }
}

class Coffeshop extends StatelessWidget {
  final String imagepath;
  final String namatoko;
  final String rating;
  final String jambuka;
  const Coffeshop({
    super.key,
    required this.imagepath,
    required this.namatoko,
    required this.rating,
    required this.jambuka,
  });

 @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 240,
      child: Stack(
        children: [
          Card(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            elevation: 10,
            child: Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  height: 150,
                  child: Image.asset(
                    imagepath,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: 10,
            bottom: 0,
            child: SizedBox(
              height: 70,
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Text(
                      namatoko,
                      style: TextStyle(
                          fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(rating),
                      SizedBox(
                        width: 20,
                      ),
                      Icon(
                        Icons.access_time,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(jambuka),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
