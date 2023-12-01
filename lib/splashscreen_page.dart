import 'dart:async';

import 'package:flutter/material.dart';
import 'package:myfirstflutter_app/login2_page.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({super.key});

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setLoading();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           Image.asset('image/pngtree-coffee-logo-design-vector-image_337940-removebg-preview.png')
          ],
        ),
      ),
    );
  }

  setLoading() {
    var duration = const Duration(seconds: 5);
    return Timer(
      duration,
      () async {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => Login2Page()),
        );
      },
    );
  }
}
