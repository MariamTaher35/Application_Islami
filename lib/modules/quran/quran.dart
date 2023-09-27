import 'package:app_2/modules/quran/quran_details.dart';
import 'package:app_2/modules/quran/widget/quran_item.dart';
import 'package:flutter/material.dart';

class Quran extends StatelessWidget {
  Quran({super.key});

  List<String> suraNames = [
    "الفاتحه",
    "البقرة",
    "آل عمران",
    "النساء",
    "المائدة",
    "الأنعام",
    "الأعراف",
    "الأنفال",
    "التوبة",
    "يونس",
    "هود",
    "يوسف",
    "الرعد",
    "إبراهيم",
    "الحجر",
    "النحل",
    "الإسراء",
    "الكهف",
    "مريم",
    "طه",
    "الأنبياء",
    "الحج",
    "المؤمنون",
    "النّور",
    "الفرقان",
    "الشعراء",
    "النّمل",
    "القصص",
    "العنكبوت",
    "الرّوم",
    "لقمان",
    "السجدة",
    "الأحزاب",
    "سبأ",
    "فاطر",
    "يس",
    "الصافات",
    "ص",
    "الزمر",
    "غافر",
    "فصّلت",
    "الشورى",
    "الزخرف",
    "الدّخان",
    "الجاثية",
    "الأحقاف",
    "محمد",
    "الفتح",
    "الحجرات",
    "ق",
    "الذاريات",
    "الطور",
    "النجم",
    "القمر",
    "الرحمن",
    "الواقعة",
    "الحديد",
    "المجادلة",
    "الحشر",
    "الممتحنة",
    "الصف",
    "الجمعة",
    "المنافقون",
    "التغابن",
    "الطلاق",
    "التحريم",
    "الملك",
    "القلم",
    "الحاقة",
    "المعارج",
    "نوح",
    "الجن",
    "المزّمّل",
    "المدّثر",
    "القيامة",
    "الإنسان",
    "المرسلات",
    "النبأ",
    "النازعات",
    "عبس",
    "التكوير",
    "الإنفطار",
    "المطفّفين",
    "الإنشقاق",
    "البروج",
    "الطارق",
    "الأعلى",
    "الغاشية",
    "الفجر",
    "البلد",
    "الشمس",
    "الليل",
    "الضحى",
    "الشرح",
    "التين",
    "العلق",
    "القدر",
    "البينة",
    "الزلزلة",
    "العاديات",
    "القارعة",
    "التكاثر",
    "العصر",
    "الهمزة",
    "الفيل",
    "قريش",
    "الماعون",
    "الكوثر",
    "الكافرون",
    "النصر",
    "المسد",
    "الإخلاص",
    "الفلق",
    "الناس"
  ];

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Column(
      children: [
        Image.asset(
          "assets/images/picture.png",
          width: 200,
        ),
        Divider(
          thickness: 1.2,
          color: theme.primaryColor,
          indent: 10,
          endIndent: 10,
          height: 5,
        ),
        Row(
          children: [
            Expanded(
                child: Text(
              "رقم السورة",
              textAlign: TextAlign.center,
              style: theme.textTheme.bodyMedium,
            )),
            Container(
              width: 1.2,
              height: 45,
              color: theme.primaryColor,
            ),
            Expanded(
                child: Text(
              "إسم السورة",
              textAlign: TextAlign.center,
              style: theme.textTheme.bodyMedium,
            )),
          ],
        ),
        Divider(
          thickness: 1.2,
          color: theme.primaryColor,
          indent: 10,
          endIndent: 10,
          height: 5,
        ),
        Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, QuranDetails.routName,
                    arguments: SuraDetail(
                        suraname: suraNames[index],
                        surenumber: "${index + 1}"));
              },
              child: QuarnItem(
                suraName: suraNames[index],
                suraNumber: "${index + 1}",
              ),
            ),
            itemCount: 114,
          ),
        )
      ],
    );
  }
}

class SuraDetail {
  final String suraname;
  final String surenumber;

  SuraDetail({required this.suraname, required this.surenumber});
}
