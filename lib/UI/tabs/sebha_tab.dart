import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:islamy_app/comman/app_image.dart';

class SebhaTab extends StatefulWidget {
  const SebhaTab({super.key});

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int counter = 0;
  double angle = 0;
  int index = 0;
  List<String> Azkar = [
    "سبحان الله",
    "الحمد لله",
    "الله اكبر",
  ];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        Stack(
          alignment: Alignment.topCenter,
          clipBehavior: Clip.none,
          children: [
            Image.asset(
              Theme.of(context).colorScheme.brightness == Brightness.light
                  ? AppImage.headsebhalight
                  : AppImage.headsebhadark,
            ),
            Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.width * .15),
                child: Transform.rotate(
                  angle: angle,
                  child: GestureDetector(
                    onTap: () {
                      OnTap();
                    },
                    child: Image.asset(
                      Theme.of(context).colorScheme.brightness ==
                              Brightness.light
                          ? AppImage.bodysebhalogoLight
                          : AppImage.bodysebhalogodark,
                      height: MediaQuery.of(context).size.height * 0.28,
                    ),
                  ),
                )),
          ],
        ),
        SizedBox(
          height: 25,
        ),
        Center(
          child: Text(
            'عدد التسبيحات',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).size.height * .01,
              horizontal: MediaQuery.of(context).size.width * .44),
          width: MediaQuery.of(context).size.width * .01,
          height: MediaQuery.of(context).size.height * .09,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary.withOpacity(.7),
            borderRadius: BorderRadius.circular(25),
          ),
            child:  Center(
              child: Text(
                '$counter',
                style: Theme.of(context).textTheme.headlineSmall
              ),
            ),
        ),
        Container(
          margin: EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).size.height * .01,
              horizontal: MediaQuery.of(context).size.width * .35),
          width: MediaQuery.of(context).size.width * .1,
          height: MediaQuery.of(context).size.height * .055,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.secondary,
            borderRadius: BorderRadius.circular(25),
          ),
          child: Center(
            child: Text(
                Azkar[index],
                style: Theme.of(context).textTheme.titleLarge!.copyWith(fontSize: 20,fontWeight: FontWeight.w600)
                ),
              ),
          ),
        
      ]),
    );
  }
  OnTap() {
    counter++;
    if (counter % 33 == 0) {
      index++;
     
      counter = 0;
    }
    if (index == Azkar.length) {
      index = 0;
    }
    angle += 360 / 4;
    setState(() {});
  }
}
