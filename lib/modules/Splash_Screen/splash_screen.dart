import 'dart:async';

import 'package:app_2/Layout/home_layout.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  static const String routeName = "Splash_Screen";

  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, HomeLayout.routeName);
    });
    return Scaffold(
        body: Image.asset(
      "assets/images/splash_image.png",
      width: mediaQuery.width,
      height: mediaQuery.height,
      fit: BoxFit.cover,
    ));
  }
}
