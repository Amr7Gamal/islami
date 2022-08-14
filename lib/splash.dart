import 'dart:async';
import 'package:flutter/material.dart';
import 'package:islami/home.dart';
import 'package:islami/providers/settings_provider.dart';
import 'package:provider/provider.dart';

class Splash extends StatefulWidget {
  static const String nameKey = "splash";

  @override
  State<StatefulWidget> createState() => _State();
}

class _State extends State<Splash> {
  @override
  void initState(){
    super.initState();
    Timer(
const Duration(seconds: 4),
        ()=> Navigator.of(context).pushNamed(Home.nameKey)
    );
  }

  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingsProvider>(context);

    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Image.asset(settingsProvider.isDark() ? "assets/images/splash_dark.png" : "assets/images/splash_light.png" ,fit: BoxFit.fill ),
      ),
    );
  }
}