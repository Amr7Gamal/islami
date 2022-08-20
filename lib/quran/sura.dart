import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/background_image.dart';
import 'package:islami/quran/verse_widget.dart';


class Sura extends StatefulWidget {
  static const String nameKey = "sura";

  @override
  State<Sura> createState() => _SuraState();
}

class _SuraState extends State<Sura> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraArgs;
    if (verses.isEmpty) {
      readFile(args.index);
    }
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          fit: BoxFit.fill,
          image: backgroundImage(context),
        )),
        child: Scaffold(
            appBar: AppBar(
              title: Text(
                args.title,
                style: Theme.of(context).textTheme.headline1,
              ),
            ),
            body: Container(
              color: Theme.of(context).backgroundColor,
              margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              child: ListView.builder(
                itemBuilder: (_, index) {
                  return VerseWidget(verses[index], index);
                },
                itemCount: verses.length,
              ),
                  )));
  }

  void readFile(int index) async {
    String content =
        await rootBundle.loadString("assets/files/${index + 1}.txt");
    List<String> lines = content.trim().split("\r\n");
    verses = lines;
    setState(() {});
  }
}

class SuraArgs {
  String title;
  int index;

  SuraArgs(this.title, this.index);
}