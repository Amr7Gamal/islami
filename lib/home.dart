import 'package:flutter/material.dart';
import 'package:islami/background_image.dart';
import 'package:islami/hedith/hedith_tap.dart';
import 'package:islami/providers/settings_provider.dart';
import 'package:islami/quran/quran_tap.dart';
import 'package:islami/radio/radio_tap.dart';
import 'package:islami/sebha/sebha_tap.dart';
import 'package:islami/settings/settings_tap.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Home extends StatefulWidget {
  static const String nameKey = "home";

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectIndex = 0;

  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingsProvider>(context);

    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        fit: BoxFit.fill,
        image: backgroundImage(context),
      )),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            AppLocalizations.of(context)!.app_title,
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectIndex,
          onTap: (index) {
            selectIndex = index;
            setState(() {});
          },
          items: [
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/quran.png")),
                label:  AppLocalizations.of(context)!.quran_title),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/hedith_icon.png")),
                label:  AppLocalizations.of(context)!.hedith_title),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/sebha_icon.png")),
                label:  AppLocalizations.of(context)!.sebha_title),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/radio.png")),
                label:  AppLocalizations.of(context)!.radio_title),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label:  AppLocalizations.of(context)!.settings_title)
          ],
        ),
        body: tabs[selectIndex],
      ),
    );
  }

  List<Widget> tabs = [Quran(), Hedith(), Sebha(), RadioTap(), Settings()];
}
