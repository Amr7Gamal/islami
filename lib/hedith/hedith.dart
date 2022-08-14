import 'package:flutter/material.dart';
import 'package:islami/background_image.dart';
import 'package:islami/hedith/hedith_tap.dart';

class HedithScreen extends StatelessWidget {
  static const String nameKey = "hedith";

  @override
  Widget build(BuildContext context) {
   var args = ModalRoute.of(context)?.settings.arguments as HedithData;

    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          fit: BoxFit.fill,
          image: backgroundImage(context),
        )),
        child: Scaffold(
            appBar: AppBar(
            title: Text(args.title , style: Theme.of(context).textTheme.headline1,),
            ),
            body: Container(
                    color: Theme.of(context).backgroundColor,
                    margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                    child:SingleChildScrollView(
                        padding: EdgeInsets.symmetric(horizontal: 14),
                        child: Text(args.hedith , style: Theme.of(context).textTheme.headline4,textAlign: TextAlign.right,)),
                    ),
                  ));
  }

}




