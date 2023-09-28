import 'package:app_2/Layout/home_layout.dart';
import 'package:app_2/core/theme/application_theme.dart';
import 'package:app_2/modules/Splash_Screen/splash_screen.dart';
import 'package:app_2/modules/hadeth/hadeth_details.dart';
import 'package:app_2/modules/quran/quran_details.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApplication());
}

class MyApplication extends StatelessWidget {
  const MyApplication({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ApplicationTheme.lightTheme,
      darkTheme: ApplicationTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      // give it key of screen to start with it
      initialRoute: SplashScreen.routeName,
      // map faster the array on search with key
      routes: {
        // call back function ( function in another place)
        SplashScreen.routeName: (context) => const SplashScreen(),
        HomeLayout.routeName: (context) => HomeLayout(),
        QuranDetails.routName: (context) => QuranDetails(),
        HadethDetails.routName: (context) => HadethDetails(),
      },
    );
  }
}
