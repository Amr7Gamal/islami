import 'package:flutter/material.dart';
import 'package:islami/providers/settings_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SettingsLanguage extends StatefulWidget {
  @override
  State<SettingsLanguage> createState() => _SettingsLanguageState();
}

class _SettingsLanguageState extends State<SettingsLanguage> {
  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingsProvider>(context);
    return Container(
      color: Theme.of(context).backgroundColor,
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
              onTap: () {
                settingsProvider.changeLanguaga("en");
              },
              child: settingsProvider.languaga == "en"
                  ? selected(AppLocalizations.of(context)!.english)
                  : unSelect(AppLocalizations.of(context)!.english)),
          SizedBox(
            height: 16,
          ),
          InkWell(
              onTap: () {
                settingsProvider.changeLanguaga("ar");
              },
              child: settingsProvider.languaga == "ar"
                  ? selected(AppLocalizations.of(context)!.arabic)
                  : unSelect(AppLocalizations.of(context)!.arabic)),
        ],
      ),
    );
  }

  Widget selected(String language) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          language,
          style: Theme.of(context)
              .textTheme
              .headline5!
              .copyWith(color: Theme.of(context).primaryColor),
        ),
        Icon(
          Icons.check,
          color: Theme.of(context).primaryColor,
        ),
      ],
    );
  }

  Widget unSelect(String language) {
    return Text(language, style: Theme.of(context).textTheme.headline5);
  }
}
