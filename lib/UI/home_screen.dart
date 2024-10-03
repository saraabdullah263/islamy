import 'package:flutter/material.dart';
import 'package:islamy_app/comman/app_image.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = 'homeScreen';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(AppImage.bgimage), fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage(AppImage.quranIcon)),
                label: 'Quran'),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage(AppImage.hadethIcon)),
                label: 'hadeeth'),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage(AppImage.sebhaIcon)),
                label: 'sebha')
          ],
        ),
      ),
    );
  }
}
