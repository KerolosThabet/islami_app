import 'package:flutter/material.dart';

class SettingProvider extends ChangeNotifier {
  ThemeMode theme = ThemeMode.light;
  String language =  'ar' ;

  void ChangeLanguage(String newLanguage) {
    if (language == newLanguage) return;
    language = newLanguage;
    notifyListeners();
  }


  void ChangeTheme(ThemeMode newTheme) {
    if (ThemeMode == theme) return;
    theme = newTheme;
    notifyListeners();
  }



}
