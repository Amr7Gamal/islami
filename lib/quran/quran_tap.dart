import 'package:flutter/material.dart';
import 'package:islami/quran/sura_name_widget.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class Quran extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    List<String> name =[ "الفاتحه","البقرة","آل عمران","النساء","المائدة","الأنعام","الأعراف","الأنفال","التوبة","يونس","هود"
      ,"يوسف","الرعد","إبراهيم","الحجر","النحل","الإسراء","الكهف","مريم","طه","الأنبياء","الحج","المؤمنون"
      ,"النّور","الفرقان","الشعراء","النّمل","القصص","العنكبوت","الرّوم","لقمان","السجدة","الأحزاب","سبأ"
      ,"فاطر","يس","الصافات","ص","الزمر","غافر","فصّلت","الشورى","الزخرف","الدّخان","الجاثية","الأحقاف"
      ,"محمد","الفتح","الحجرات","ق","الذاريات","الطور","النجم","القمر","الرحمن","الواقعة","الحديد","المجادلة"
      ,"الحشر","الممتحنة","الصف","الجمعة","المنافقون","التغابن","الطلاق","التحريم","الملك","القلم","الحاقة","المعارج"
      ,"نوح","الجن","المزّمّل","المدّثر","القيامة","الإنسان","المرسلات","النبأ","النازعات","عبس","التكوير","الإنفطار"
      ,"المطفّفين","الإنشقاق","البروج","الطارق","الأعلى","الغاشية","الفجر","البلد","الشمس","الليل","الضحى","الشرح"
      ,"التين","العلق","القدر","البينة","الزلزلة","العاديات","القارعة","التكاثر","العصر",
      "الهمزة","الفيل","قريش","الماعون","الكوثر","الكافرون","النصر","المسد","الإخلاص","الفلق","الناس"];

    return Column(
      children: [
      Image.asset("assets/images/quran_header.png"),
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            border: Border.symmetric(horizontal: BorderSide(color: Theme.of(context).primaryColor , width: 4))
          ),
          child: Text(AppLocalizations.of(context)!.name , style: Theme.of(context).textTheme.headline2, textAlign: TextAlign.center,),
        ),

        Expanded(
          child: ListView.separated(itemBuilder: (_ , index){
            return SuraNameWidget(name[index] , index );
          }, itemCount: name.length,
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
}