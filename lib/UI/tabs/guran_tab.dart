import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamy_app/UI/screens/quran_screen.dart';
import 'package:islamy_app/comman/app_colors.dart';
import 'package:islamy_app/comman/app_image.dart';

class GuranTab extends StatefulWidget {
  GuranTab({super.key});

  @override
  State<GuranTab> createState() => _GuranTabState();
}

class _GuranTabState extends State<GuranTab> {
  List<String> suraName = [
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

  List<int> verciscount = [];

  @override
  Widget build(BuildContext context) {
    if (verciscount.isEmpty) LoadSuras();
    return Column(
      children: [
        Image.asset(
          AppImage.quranscreenlogo,
          height: MediaQuery.of(context).size.height * 0.25,
        ),
        Expanded(
          child: ListView.builder(
              itemCount: suraName.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                  padding: EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.onPrimary,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ListTile(
                    title: Text(
                      suraName[index],
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    subtitle: Text(
                      verciscount.isNotEmpty ? verciscount[index].toString(): '',
                      style: TextStyle(color: Theme.of(context).colorScheme.secondary),
                    ),
                    trailing: Container(
                      child: InkWell(
                          onTap: () {
                            Navigator.of(context).pushNamed(
                                QuranScreen.routeName,
                                arguments: QuranModle(
                                    index: index, name: suraName[index]));
                          },
                          child: Icon(
                            Icons.play_arrow,
                            size: 35,
                          )),
                      decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          borderRadius: BorderRadius.circular(20)),
                    ),
                    
                  ),
                 
                );
                 
              }),
        )
      ],
    );
  }

  LoadSuras() async {
    List<int> _verciscount = [];

    for (var i = 0; i < suraName.length; i++) {
      String data = await rootBundle.loadString('assets/quran/${i + 1}.txt');
      List<String> content = data.trim().split('\n');
      content.removeWhere((Element) => Element.trim().isEmpty);
      _verciscount.add(content.length);
    }
    verciscount = _verciscount;
    setState(() {});
  }
}

class QuranModle {
  String name;
  int index;
  QuranModle({required this.index, required this.name});
}
