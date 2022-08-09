import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:islami/hedith_tap.dart';
import 'package:islami/moshaf_tap.dart';
import 'package:islami/radio_tap.dart';
import 'package:islami/sebha_tap.dart';

class Home extends StatefulWidget {
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
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: Text(
            "islami",
            style: TextStyle(color: Colors.black, fontSize: 30),
          ),
          elevation: 0,
        ),
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(canvasColor: Colors.deepOrange),
          child: BottomNavigationBar(
            currentIndex: selectIndex,
            onTap: (index) {
              selectIndex = index;
              setState((){});
              ;
            },
            items: [
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/moshaf.png")),
                  label: "Moshaf"),
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
        ),

        body: tabs[selectIndex],
      ),
    );
  }

  List<Widget> tabs = [
Moshaf() , Hedith() , Sebha() , RadioTap()
  ];

}

