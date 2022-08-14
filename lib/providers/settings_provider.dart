import 'package:flutter/material.dart';
import 'package:islami/mythem.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsProvider extends ChangeNotifier{

  ThemeData theme = MyThem.lightTheme;
  String languaga = "ar";

  changeTheme(ThemeData newTheme) async {
    final prefs = await SharedPreferences.getInstance();
    if (newTheme == theme) {
      return;
    }

    theme = newTheme;
    prefs.setString("theme", theme == MyThem.lightTheme ? "light" : "dark");
    notifyListeners();
  }

  changeLanguaga(String newLanguaga) async {
    final prefs = await SharedPreferences.getInstance();
    if (newLanguaga == languaga) {
      return;
    }

    languaga = newLanguaga;
    prefs.setString("languaga", languaga);
    notifyListeners();
  }

  bool isDark() {
    return theme == MyThem.darkTheme;
  }

}

