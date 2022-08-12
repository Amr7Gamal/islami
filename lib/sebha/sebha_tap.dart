import 'package:flutter/material.dart';

class Sebha extends StatefulWidget {
  @override
  State<Sebha> createState() => _SebhaState();
}

class _SebhaState extends State<Sebha> {
  double angle = 0;
  int counter = 0;
  int index = 0;
List<String> askar = ["سبحان الله" , "الحمد لله" , "الله اكبر"];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: double.infinity,
      child: Column(
        children: [
          Container(
            height: size.height * .5,
            child: Stack(children: [
              Positioned(
                  left: size.width * .47,
                  child: Image.asset("assets/images/head_sebha.png")),
              Positioned(
                top: 77,
                left: size.width * .28,
                right: size.width * .28,
                child: InkWell(
                    onTap: onPressed,
                    highlightColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    child: Transform.rotate(
                        angle: angle,
                        child: Image.asset("assets/images/sebha.png"))),
              ),
            ]),
          ),
          Text(
            "عدد التسبيحات",
            style: Theme.of(context).textTheme.headline2,
            textAlign: TextAlign.center,
          ),
          Container(
            alignment: Alignment.center,
            width: 69,
            height: 81,
            decoration: BoxDecoration(
                color: Color(0xffb99d76),
                borderRadius: BorderRadius.circular(50)
            ),
            child: Text(
              "$counter",
              style: Theme.of(context).textTheme.headline3,
            ),
          ),

          Container(
            margin: EdgeInsets.only(top: 20),
            decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(50)
            ),
            alignment: Alignment.center,
            width: 105,
            height: 33,
child: Text(askar[index] , style: Theme.of(context).textTheme.headline4, ),
          )
        ],
      ),
    );
  }

  void onPressed() {
    angle--;
    counter++;

    if(counter == 34){
      if(index != askar.length -1) {
        index++;
      } else{index = 0;}
      counter = 1;

    }
    setState(() {});
  }
}
