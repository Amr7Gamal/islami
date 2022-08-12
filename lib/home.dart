
import 'package:flutter/material.dart';
import 'package:islami/hedith/hedith_tap.dart';
import 'package:islami/quran/quran_tap.dart';
import 'package:islami/radio/radio_tap.dart';
import 'package:islami/sebha/sebha_tap.dart';

class Home extends StatefulWidget {
  static const String nameKey = "home";
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        fit: BoxFit.fill,
        image: AssetImage("assets/images/background.png"),
      )),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "islami",
            style: TextStyle(color: Colors.black, fontSize: 30),
          ),

        ),
        bottomNavigationBar: BottomNavigationBar(

          currentIndex: selectIndex,
          onTap: (index) {
            selectIndex = index;
            setState((){});

          },
          items: [
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/Quran.png")),
                label: "Quran"),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/hedith.png")),
                label: "Hedith"),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/sebha.png")),
                label: "Sebha"),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/radio.png")),
                label: "Radio"),
          ],
        ),

        body: tabs[selectIndex],
      ),
    );
  }

  List<Widget> tabs = [
Quran() , Hedith() , Sebha() , RadioTap()
  ];

}

