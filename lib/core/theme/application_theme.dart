import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ApplicationTheme extends StatelessWidget {
  static ThemeData lightTheme = ThemeData(
      primaryColor: Color(0xFFB7935F),
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.transparent,
          centerTitle: true,
          elevation: 0,
          titleTextStyle: GoogleFonts.elMessiri(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black)),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: Color(0xFFB7935F),
        type: BottomNavigationBarType.fixed,
        selectedIconTheme: IconThemeData(
          color: Colors.black,
          size: 32,
        ),
        selectedItemColor: Colors.black,
        unselectedIconTheme: IconThemeData(
          color: Colors.white,
          size: 28,
        ),
        unselectedItemColor: Colors.white,
      ),
      textTheme: TextTheme(
          titleLarge: GoogleFonts.elMessiri(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
          bodyLarge: GoogleFonts.elMessiri(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),
          bodyMedium: GoogleFonts.elMessiri(
              fontSize: 25, fontWeight: FontWeight.w500, color: Colors.black),
          bodySmall: GoogleFonts.elMessiri(
              fontSize: 18,
              fontWeight: FontWeight.normal,
              color: Colors.black)));
  static ThemeData darkTheme = ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          elevation: 0,
          titleTextStyle: GoogleFonts.elMessiri(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black)));

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
