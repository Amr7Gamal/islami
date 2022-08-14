import 'package:flutter/material.dart';
import 'package:islami/providers/settings_provider.dart';
import 'package:provider/provider.dart';

class MyThem {
  static final Color goldenColor = Color(0xffB7935F);
  static final Color yellowColor = Color(0xffFACC1D);
  static final Color blueDarkColor = Color(0xff141A2E);
  static final Color whiteColor = Colors.white;
  static final Color blackColor = Colors.black;

  static final ThemeData lightTheme = ThemeData(
    primaryColor: goldenColor,
    backgroundColor: whiteColor,
    appBarTheme: AppBarTheme(
      titleTextStyle: TextStyle(color: blackColor, fontSize: 30),
      iconTheme: IconThemeData(color: blackColor),
      color: Colors.transparent,
      elevation: 0,
      centerTitle: true,
    ),
    scaffoldBackgroundColor: Colors.transparent,
    canvasColor: goldenColor,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedIconTheme: IconThemeData(color: blackColor),
      unselectedIconTheme: IconThemeData(color: whiteColor),
      selectedLabelStyle: TextStyle(color: blackColor),
      unselectedLabelStyle: TextStyle(color: whiteColor),
      selectedItemColor: blackColor,
      unselectedItemColor: whiteColor,
    ),
    textTheme: TextTheme(
        headline1: TextStyle(
            fontSize: 28, fontWeight: FontWeight.bold, color: blackColor),
        headline2: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        headline3: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
        headline4: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: blackColor),
        headline5: TextStyle(fontSize: 16),
        headline6: TextStyle(
            fontSize: 14, color: blackColor,
        )
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    primaryColor: yellowColor,
    backgroundColor: blueDarkColor,
    appBarTheme: AppBarTheme(
      titleTextStyle: TextStyle(color: whiteColor, fontSize: 30),
      iconTheme: IconThemeData(color: whiteColor),
      color: Colors.transparent,
      elevation: 0,
      centerTitle: true,
    ),
    scaffoldBackgroundColor: Colors.transparent,
    canvasColor: blueDarkColor,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedIconTheme: IconThemeData(color: whiteColor),
      unselectedIconTheme: IconThemeData(color: whiteColor),
      selectedLabelStyle: TextStyle(color: whiteColor),
      unselectedLabelStyle: TextStyle(color: whiteColor),
      selectedItemColor: whiteColor,
      unselectedItemColor: whiteColor,
    ),
    textTheme: TextTheme(
        headline1: TextStyle(
            fontSize: 28, fontWeight: FontWeight.bold, color: whiteColor),
        headline2: TextStyle(
            fontSize: 25, fontWeight: FontWeight.bold, color: whiteColor),
        headline3: TextStyle(
            fontSize: 25, fontWeight: FontWeight.w400, color: yellowColor),
        headline4: TextStyle(
            fontSize: 20, fontWeight: FontWeight.bold, color: yellowColor),
        headline5: TextStyle(fontSize: 16, color: whiteColor),
        headline6: TextStyle(
          fontSize: 14, color: whiteColor
        )),
  );
}
