import 'package:flutter/material.dart';

class MyProvider extends ChangeNotifier {
  String local = "en";

  ThemeMode currenttheme = ThemeMode.light;

  changeLanguage(String langCode) {
    local = langCode;
    notifyListeners();
  }

  changeTheme(ThemeMode newTheme) {
    if (currenttheme == newTheme) return;
    currenttheme = newTheme;
    notifyListeners();
  }

  bool isDark() {
    return currenttheme == ThemeMode.dark;
  }

  String Background() {
    return isDark()
        ? "assets/images/background_dark.png"
        : "assets/images/background_light.png";
  }

  String Backsplash() {
    return isDark()
        ? "assets/images/splash_dark.png"
        : "assets/images/splash_image.png";
  }
}
