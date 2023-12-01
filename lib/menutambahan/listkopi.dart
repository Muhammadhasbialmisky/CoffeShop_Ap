import 'package:flutter/material.dart';
import 'package:myfirstflutter_app/data/kopidata.dart';
import 'package:myfirstflutter_app/model/kopimodel.dart';

class ListKopiPage extends StatefulWidget {
  const ListKopiPage({super.key});

  @override
  State<ListKopiPage> createState() => _ListKopiPageState();
}

class _ListKopiPageState extends State<ListKopiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
      itemCount: KopiData.itemCount,
      itemBuilder: (context, index) {
        KopiModel kopi = KopiData.getkopiitem(index);
        return GestureDetector(
          onTap: () {},
          child: Card(
            elevation: 7,
            color: Colors.brown,
            shadowColor: Colors.brown[900],
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.network(
                      kopi.gambarkopi ?? '',
                      width: 100,
                      height: 100,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Text(
                    kopi.namakopi ?? '',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    ));
  }
}
