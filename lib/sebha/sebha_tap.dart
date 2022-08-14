import 'package:flutter/material.dart';
import 'package:islami/mythem.dart';
import 'package:islami/providers/settings_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class Sebha extends StatefulWidget {
  @override
  State<Sebha> createState() => _SebhaState();
}

class _SebhaState extends State<Sebha> {
  double angle = 0;
  int counter = 0;
  int index = 0;
  List<String> askar = ["سبحان الله", "الحمد لله", "الله اكبر"];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var settingsProviders = Provider.of<SettingsProvider>(context);
    return Container(
      width: double.infinity,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: size.height *.2),
            height: size.height * .4 -60,
            child: Stack(children: [
              Positioned(
                  left: size.width * .47,

                  child: Image.asset(settingsProviders.isDark()
                      ? "assets/images/head_sebha_dark.png"
                      : "assets/images/head_sebha.png")),
              Positioned(
                top: size.height * .1 -10,
                left: size.width * .28,
                right: size.width * .28,
                child: InkWell(
                    onTap: onPressed,
                    highlightColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    child: Transform.rotate(
                        angle: angle,
                        child: Image.asset(settingsProviders.isDark()
                            ? "assets/images/body_sebha_dark.png"
                            : "assets/images/body_sebha.png"))),
              ),
            ]),
          ),
          Text(
            AppLocalizations.of(context)!.number_praises,
            style: Theme.of(context).textTheme.headline2,
            textAlign: TextAlign.center,
          ),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(top: 6),
            width: 69,
            height: 81,
            decoration: BoxDecoration(
                color: settingsProviders.isDark() ? MyThem.blueDarkColor :  Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(50)),
            child: Text(
              "$counter",
              style: Theme.of(context).textTheme.headline3!.copyWith(
                  color: settingsProviders.isDark() ? MyThem.whiteColor : MyThem.blackColor,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(50)),
            alignment: Alignment.center,
            width: 105,
            height: 33,
            child: Text(
              askar[index],
              style: Theme.of(context).textTheme.headline4!.copyWith(
                color: settingsProviders.isDark() ? MyThem.blackColor : MyThem.whiteColor,
              ),
            ),
          )
        ],
      ),
    );
  }

  void onPressed() {
    angle--;
    counter++;

    if (counter == 34) {
      if (index != askar.length - 1) {
        index++;
      } else {
        index = 0;
      }
      counter = 1;
    }
    setState(() {});
  }
}
