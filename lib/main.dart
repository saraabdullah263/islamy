import 'package:flutter/material.dart';
import 'package:islamy_app/UI/screens/home_screen.dart';
import 'package:islamy_app/UI/screens/quran_screen.dart';
import 'package:islamy_app/comman/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.ligthTheme,
      themeMode: ThemeMode.system,
      routes: {
        HomeScreen.routeName: (_) => HomeScreen(),
        QuranScreen.routeName: (_) => QuranScreen(),
      },
      initialRoute: HomeScreen.routeName,
    );
  }
}
