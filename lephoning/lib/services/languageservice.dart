import 'package:flutter/material.dart';

class LanguageService extends ChangeNotifier {
  Locale _locale = Locale('en');

  Locale get locale => _locale;

  void changeLanguage(String languageCode) {
    _locale = Locale(languageCode);
    notifyListeners();
  }
}
