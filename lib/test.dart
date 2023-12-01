import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFFFFE0B2),
        body: Padding(
          padding: const EdgeInsets.all(25),
          child: Container(
            height: 100,
            width: double.infinity,
            color: Colors.blue,
            padding: EdgeInsets.only(left: 10,top: 10,),
            child: Row(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.star,color: Colors.yellow,),
                SizedBox(width: 90,),
                Text('Bismillah',style: TextStyle(fontSize: 15),
                ),
                
              ],
            ),
          ),

        ),
        
      ),
    );
  }
}
