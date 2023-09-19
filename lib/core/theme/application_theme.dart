import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ApplicationTheme extends StatelessWidget {
  static ThemeData lightTheme = ThemeData(
    primaryColor: Color(0xFFB7935F),
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        elevation: 0,
        titleTextStyle: GoogleFonts.elMessiri(
            fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black)),
  );
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
