import 'package:flutter/material.dart';
import 'package:islami/mytheme.dart';
import 'package:islami/providers/settings_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SettingsTheme extends StatefulWidget {
  @override
  State<SettingsTheme> createState() => _SettingsThemeState();
}

class _SettingsThemeState extends State<SettingsTheme> {
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
                settingsProvider.changeTheme(MyTheme.lightTheme);
              },
              child: settingsProvider.isDark()
                  ? unSelect(AppLocalizations.of(context)!.light)
                  : selected(AppLocalizations.of(context)!.light)),
          SizedBox(
            height: 16,
          ),
          InkWell(
              onTap: () {
                settingsProvider.changeTheme(MyTheme.darkTheme);
              },
              child: settingsProvider.isDark()
                  ? selected(AppLocalizations.of(context)!.dark)
                  : unSelect(AppLocalizations.of(context)!.dark)),
        ],
      ),
    );
  }

  Widget selected(String theme) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          theme,
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

  Widget unSelect(String theme) {
    return Text(theme, style: Theme.of(context).textTheme.headline5);
  }
}
