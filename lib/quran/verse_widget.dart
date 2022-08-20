import 'package:flutter/material.dart';

class VerseWidget extends StatelessWidget {
  String verse;
  int index;

  VerseWidget(this.verse, this.index);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 6),
        child: Text(
          " $verse {${index + 1}}",
          style: Theme.of(context).textTheme.headline4,
          textAlign: TextAlign.center,
        ));
  }
}
