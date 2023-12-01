import 'package:flutter/material.dart';
import 'package:myfirstflutter_app/data/gelasdata.dart';
import 'package:myfirstflutter_app/model/gelasmodel.dart';

class ListGelas extends StatefulWidget {
  const ListGelas({super.key});

  @override
  State<ListGelas> createState() => _ListGelasState();
}

class _ListGelasState extends State<ListGelas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: GelasData.itemCount,
        itemBuilder: (context, index) {
          GelasModel gelas = GelasData.getgelasitem(index);
          return GestureDetector(
            onTap: () {},
            child: Card(
              elevation: 7,
              color: Colors.grey,
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Image.network(
                        gelas.gambargelas ?? '',
                        width: 100,
                        height: 100,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Text(
                      gelas.namagelas ?? '',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
