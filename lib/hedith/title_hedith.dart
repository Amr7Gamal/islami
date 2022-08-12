import 'package:flutter/material.dart';
import 'package:islami/hedith/hedith.dart';
import 'package:islami/hedith/hedith_tap.dart';

class TitleHedith extends StatelessWidget{
  String title , hedith;

  TitleHedith(this.title , this.hedith);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: (){
          Navigator.pushNamed(context, HedithScreen.nameKey,
          arguments: HedithData(title, hedith));
        },
      child: Container(
          padding: EdgeInsets.symmetric(vertical: 6),
          child: Text(title , style: Theme.of(context).textTheme.headline2, textAlign: TextAlign.center,)),
    );

  }
}