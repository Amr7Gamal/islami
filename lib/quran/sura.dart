
import 'package:flutter/material.dart';

class Sura extends StatelessWidget {
  static const String nameKey = "sura";
  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraArgs;

    List<String>  verses = [];

    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage("assets/images/background.png"),
          )),

      child: Scaffold(
        appBar: AppBar(
          title:Text(args.title , style: Theme.of(context).textTheme.headline1,),
        ),
        body: Container(
          color: Theme.of(context).backgroundColor,
          child: ListView.builder(itemBuilder: (_ , index){
            return Text(verses[index]);
          },itemCount: verses.length,),
        )

      )
    );
  }

}

  class SuraArgs {
    String title;
    int index;
    SuraArgs(this.title , this.index);
  }

