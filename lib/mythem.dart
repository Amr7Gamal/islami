import 'package:flutter/material.dart';

class MyThem {
  static final Color primaryColor = Color(0xffB7935F);

  static final ThemeData lightTheme = ThemeData(
    primaryColor: primaryColor,
      appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(color: Colors.black),
        color: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      scaffoldBackgroundColor: Colors.transparent,
      canvasColor: primaryColor,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedIconTheme: IconThemeData(color: Colors.black),
        unselectedIconTheme: IconThemeData(color: Colors.white),
        selectedLabelStyle: TextStyle(color: Colors.black),
        unselectedLabelStyle: TextStyle(color: Colors.white),
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
      ),
      textTheme: TextTheme(
          headline1: TextStyle(fontSize: 28, fontWeight: FontWeight.bold , color: Colors.black),
          headline2: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          headline3: TextStyle(fontSize: 24, fontWeight: FontWeight.w400 ),
         headline4:  TextStyle(fontSize: 20)),
  );
}
