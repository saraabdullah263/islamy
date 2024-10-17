import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier {
  bool get isDark => appThemeMode == ThemeMode.dark;
  ThemeMode appThemeMode = ThemeMode.dark;
  String localeCode = 'en';

 void ChangeThemeMode(ThemeMode themeMode) {
    appThemeMode = themeMode;
    notifyListeners();
  }

  void ChangeLocal(String locale) {
    localeCode = locale;
    notifyListeners();
  }
}
