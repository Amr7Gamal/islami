import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islami/hedith/hedith.dart';
import 'package:islami/home.dart';
import 'package:islami/mytheme.dart';
import 'package:islami/providers/settings_provider.dart';
import 'package:islami/quran/sura.dart';
import 'package:islami/splash.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(ChangeNotifierProvider<SettingsProvider>(
      create: (BuildContext) {
        return SettingsProvider();
      },
      child: MyApp()));
}

class MyApp extends StatelessWidget {
  late SettingsProvider settingsProvider;

  @override
  Widget build(BuildContext context) {
    settingsProvider = Provider.of<SettingsProvider>(context);
    sharedValu();

    return MaterialApp(
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [Locale("en"), Locale("ar")],
      locale: Locale(settingsProvider.languaga),
      theme: settingsProvider.theme,
      debugShowCheckedModeBanner: false,
      title: "islami",
      initialRoute: Splash.nameKey,
      routes: {
        Home.nameKey: (_) => Home(),
        Sura.nameKey: (_) => Sura(),
        HedithScreen.nameKey: (_) => HedithScreen(),
        Splash.nameKey: (_) => Splash()
      },
    );
  }

  void sharedValu() async {
    final prefs = await SharedPreferences.getInstance();

    settingsProvider.changeLanguaga(prefs.getString("languaga") ?? "ar");

    if (prefs.getString("theme") == "light") {
      settingsProvider.changeTheme(MyTheme.lightTheme);
    } else if (prefs.getString("theme") == "dark") {
      settingsProvider.changeTheme(MyTheme.darkTheme);
    }
  }
}
