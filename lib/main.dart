
import 'package:flutter/material.dart';
import 'package:islami/home.dart';
import 'package:islami/mythem.dart';
import 'package:islami/quran/sura.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MyThem.lightTheme,
      debugShowCheckedModeBanner: false,
      title: "islami",
     initialRoute: Home.nameKey,
     routes: {Home.nameKey : (_)=>Home() , Sura.nameKey : (_)=> Sura()},
    );
  }
}