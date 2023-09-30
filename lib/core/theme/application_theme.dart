import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ApplicationTheme extends StatelessWidget {
  static ThemeData lightTheme = ThemeData(
      primaryColor: Color(0xFFB7935F),
      colorScheme: ColorScheme(
          brightness: Brightness.light,
          primary: Color(0xFFB7935F),
          onPrimary: Colors.black,
          secondary: Color(0xFFB7935F),
          onSecondary: Colors.white,
          error: Colors.red,
          onError: Colors.white,
          background: Color(0xFFB7935F),
          onBackground: Colors.grey,
          surface: Colors.blueGrey,
          onSurface: Colors.white),
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
      primaryColor: Color(0xFF141A2E),
      colorScheme: ColorScheme.fromSeed(
          primary: Color(0xFF141A2E),
          onPrimary: Color(0xFFFACC1D),
          seedColor: Color(0xFF141A2E),
          secondary: Color(0xFFFACC1D),
          onSecondary: Color(0xFFFACC1D),
          onSurface: Colors.black),
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Colors.transparent,
          centerTitle: true,
          elevation: 0,
          titleTextStyle: GoogleFonts.elMessiri(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white)),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: Color(0xFF141A2E),
        type: BottomNavigationBarType.fixed,
        selectedIconTheme: IconThemeData(
          color: Color(0xFFFACC1D),
          size: 32,
        ),
        selectedItemColor: Color(0xFFFACC1D),
        unselectedIconTheme: IconThemeData(
          color: Colors.white,
          size: 28,
        ),
        unselectedItemColor: Colors.white,
      ),
      textTheme: TextTheme(
          titleLarge: GoogleFonts.elMessiri(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
          bodyLarge: GoogleFonts.elMessiri(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
          bodyMedium: GoogleFonts.elMessiri(
              fontSize: 25, fontWeight: FontWeight.w500, color: Colors.white),
          bodySmall: GoogleFonts.elMessiri(
              fontSize: 18,
              fontWeight: FontWeight.normal,
              color: Colors.white)),
      dividerColor: const Color(0xFFFACC1D));

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
