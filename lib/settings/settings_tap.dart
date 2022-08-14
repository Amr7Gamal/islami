import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/providers/settings_provider.dart';
import 'package:islami/settings/settingsLanguage.dart';
import 'package:islami/settings/settingsTheme.dart';
import 'package:provider/provider.dart';


class Settings extends StatefulWidget {
  static const String keyName = "sttings";

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingsProvider>(context);

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 64),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            AppLocalizations.of(context)!.language,
            style: Theme.of(context).textTheme.headline6,
          ),
          InkWell(
            onTap: (){
              showLanguage();

            },
            child: Container(
              height: 40,
              margin: EdgeInsets.only(top: 6),
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: Theme.of(context).backgroundColor,
                  border:
                      Border.all(color: Theme.of(context).primaryColor, width: 1),
                  borderRadius: BorderRadius.circular(8)),
              child: Text(
                settingsProvider.languaga == "en" ? "English" : "العربية",
                style: Theme.of(context).textTheme.headline5,
              ),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Text(
         AppLocalizations.of(context)!.theme,
            style: Theme.of(context).textTheme.headline6,
          ),
          InkWell(
            onTap: (){
           showTheme();
            },
            child: Container(
              height: 40,
              margin: EdgeInsets.only(top: 6),
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: Theme.of(context).backgroundColor,
                  border:
                      Border.all(color: Theme.of(context).primaryColor, width: 1),
                  borderRadius: BorderRadius.circular(8)),
              child: Text(
                settingsProvider.isDark() ?  AppLocalizations.of(context)!.dark  :  AppLocalizations.of(context)!.light,
                style: Theme.of(context).textTheme.headline5,
              ),
            ),
          ),
        ],
      ),
    );
  }

  void showLanguage(){
    showModalBottomSheet(context: context, builder: (builderContext){
      return SettingsLanguage();
    });
  }
  void showTheme(){
    showModalBottomSheet(context: context, builder: (builderContext){
      return SettingsTheme();
    });
  }
}
