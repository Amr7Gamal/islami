import 'package:flutter/material.dart';
import 'package:islami/quran/sura.dart';

class SuraNameWidget extends StatelessWidget{
  String title;
  int index;
  SuraNameWidget(this.title , this.index);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, Sura.nameKey, arguments: SuraArgs(title, index));
      },
      child: Container(
          padding: EdgeInsets.symmetric(vertical: 6),
          child: Text(title , style: Theme.of(context).textTheme.headline2, textAlign: TextAlign.center,)),
    );

  }
}