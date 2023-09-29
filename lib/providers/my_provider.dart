import 'package:flutter/material.dart';

class MyProvider extends ChangeNotifier {
  String local = "en";

  changeLanguage(String langCode) {
    local = langCode;
    notifyListeners();
  }
}
