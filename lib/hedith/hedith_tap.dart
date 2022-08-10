import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/hedith/title_hedith.dart';

class Hedith extends StatefulWidget {
  @override
  State<Hedith> createState() => _HedithState();
}

class _HedithState extends State<Hedith> {
  List<HedithData> hedithData = [];

  @override
  Widget build(BuildContext context) {
    if (hedithData.isEmpty)
      readHedith();


    return Column(

      children: [
        Image.asset("assets/images/hedith.png"),
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
              border: Border.symmetric(horizontal: BorderSide(color: Theme.of(context).primaryColor , width: 4))
          ),
          child: Text("Name" , style: Theme.of(context).textTheme.headline2, textAlign: TextAlign.center,),
        ),

        Expanded(
          child: ListView.separated(
            itemBuilder: (_, index) {
              return TitleHedith(hedithData[index].title , hedithData[index].hedith);
            },
            itemCount: hedithData.length,
            separatorBuilder: (_ , index){
              return Container(
                height: 2,
                color: Theme.of(context).primaryColor,
              );
            },
          ),
        ),
      ],
    );
  }

  void readHedith() async {
    List<HedithData> hedith = [];
    String content = await rootBundle.loadString("assets/files/ahadeth.txt");
    List<String> theHedith = content.trim().split("#");

    for (int i = 0; i < theHedith.length; i++) {
      List<String> hedithLines = theHedith[i].trim().split("\r");
      String title = hedithLines[0];
      hedithLines.removeAt(0);
      String contentHedith = hedithLines.join("\n");
      HedithData h = HedithData(title, contentHedith);
      hedith.add(h);
    }
    hedithData = hedith;
    setState(() {});
  }
}

class HedithData {
  String title, hedith;
  HedithData(this.title, this.hedith);
}
