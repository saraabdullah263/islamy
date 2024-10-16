import 'package:flutter/material.dart';
import 'package:islamy_app/UI/tabs/guran_tab.dart';
import 'package:islamy_app/UI/tabs/hadeath_tab.dart';
import 'package:islamy_app/UI/tabs/radio_tab.dart';
import 'package:islamy_app/UI/tabs/sebha_tab.dart';
import 'package:islamy_app/UI/tabs/setting_tab.dart';
import 'package:islamy_app/comman/app_image.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';




class HomeScreen extends StatefulWidget {
  static const String routeName = 'homeScreen';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;
  List<Widget> tabs = [
    GuranTab(),
    HadeathTab(),
    SebhaTab(),
    RadioTab(),
    SettingTab()
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(Theme.of(context).colorScheme.brightness==Brightness.light? AppImage.bglightimage:AppImage.bgdarkimage), fit: BoxFit.cover)),
      child: Scaffold(
        appBar: AppBar(
          title: Text(AppLocalizations.of(context)!.islamy),
        ),
        body: tabs[index],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: index,
          onTap: (value) {
            setState(() {
              index = value;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage(AppImage.quranIcon)),
                label: AppLocalizations.of(context)!.quran),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage(AppImage.hadethIcon)),
                label: AppLocalizations.of(context)!.hadeeth),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage(AppImage.sebhaIcon)),
                label: AppLocalizations.of(context)!.sebha),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage(AppImage.radioIcon)),
                label: AppLocalizations.of(context)!.radio),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: AppLocalizations.of(context)!.setting),
          ],
        ),
      ),
    );
  }
}
