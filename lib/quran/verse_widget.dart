import 'package:flutter/material.dart';
import 'package:islami/quran/sura.dart';

class VerseWidget extends StatelessWidget{
  String verse;
  int index;
  VerseWidget(this.verse , this.index);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 6),
        child: Text("{${index+1}} $verse", style: Theme.of(context).textTheme.headline2, textAlign: TextAlign.center,));
  }
}