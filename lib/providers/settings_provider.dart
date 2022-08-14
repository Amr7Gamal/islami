import 'package:flutter/material.dart';
import 'package:islami/mythem.dart';

class SettingsProvider extends ChangeNotifier{

  ThemeData theme = MyThem.lightTheme;
  String languaga = "en";

  changeTheme(ThemeData newTheme){
    if(newTheme == theme){
      return;
    }

    theme = newTheme;
    notifyListeners();

  }


  changeLanguaga(String newLanguaga){
    if(newLanguaga == languaga){
      return;
    }

    languaga = newLanguaga;
    notifyListeners();
  }

  bool isDark(){
    return theme == MyThem.darkTheme;
  }

}

