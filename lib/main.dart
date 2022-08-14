import 'package:flutter/material.dart';
import 'package:islami/hedith/hedith.dart';
import 'package:islami/home.dart';
import 'package:islami/providers/settings_provider.dart';
import 'package:islami/quran/sura.dart';
import 'package:islami/splash.dart';
import 'package:provider/provider.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(ChangeNotifierProvider<SettingsProvider>(
      create: (BuildContext) {
        return SettingsProvider();
      },
      child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingsProvider>(context);

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
        Splash.nameKey :(_)=> Splash()
      },
    );
  }
}
