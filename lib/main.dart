import 'package:flutter/material.dart';
import 'package:islamy_app/UI/screens/hadeth_screen.dart';
import 'package:islamy_app/UI/screens/home_screen.dart';
import 'package:islamy_app/UI/screens/quran_screen.dart';
import 'package:islamy_app/comman/app_theme.dart';
import 'package:islamy_app/providers/theme_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => ThemeProvider(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Localizations Sample App',
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale(Provider.of<ThemeProvider>(context).localeCode),
      theme: AppTheme.ligthTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: Provider.of<ThemeProvider>(context).appThemeMode,
      routes: {
        HomeScreen.routeName: (_) => HomeScreen(),
        QuranScreen.routeName: (_) => QuranScreen(),
        HadethScreen.routeName: (_) => HadethScreen(),
      },
      initialRoute: HomeScreen.routeName,
    );
  }
}
