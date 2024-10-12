import 'package:flutter/material.dart';
import 'package:islamy_app/comman/app_colors.dart';

class AppTheme {
  static ThemeData ligthTheme = ThemeData(
     dividerTheme: DividerThemeData(color:  Colors.black,),
      colorScheme: ColorScheme(
          brightness: Brightness.light,
          primary: AppColors.mainlightColor,
          onPrimary: Colors.white70,
          secondary: Colors.white70,
          onSecondary: Colors.white70,
          error: Colors.red,
          onError: Colors.white70,
          surface: Colors.white70,
          onSurface: Colors.white70),
      textTheme: TextTheme(
          titleMedium: TextStyle(
              color: AppColors.mainlightColor,
              fontSize: 25,
              fontWeight: FontWeight.w400)),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        type: BottomNavigationBarType.fixed,
        backgroundColor: AppColors.mainlightColor,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
      ),
      appBarTheme: const AppBarTheme(
          titleTextStyle: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w700, fontSize: 30),
          color: Colors.transparent,
          centerTitle: true,
          elevation: 0),
      primaryColor: AppColors.mainlightColor,
      scaffoldBackgroundColor: Colors.transparent);
  static ThemeData darkTheme = ThemeData(
    dividerTheme: DividerThemeData(color: Colors.white,),
    colorScheme: ColorScheme(
          brightness: Brightness.dark,
          primary: AppColors.maindarkColor,
          onPrimary: AppColors.maindarkColor,
          secondary: Colors.white70,
          onSecondary: Colors.white70,
          error: Colors.white70,
          onError: Colors.white70,
          surface: Colors.white70,
          onSurface: Colors.white70),
      textTheme: TextTheme(
          titleMedium: TextStyle(
              color: AppColors.maindarkColor,
              fontSize: 25,
              fontWeight: FontWeight.w400)),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        type: BottomNavigationBarType.fixed,
        backgroundColor: AppColors.maindarkColor,
        selectedItemColor: AppColors.selecteddarkColor,
        unselectedItemColor: Colors.white,
      ),
      appBarTheme: const AppBarTheme(
          titleTextStyle: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w700, fontSize: 30),
          color: Colors.transparent,
          centerTitle: true,
          elevation: 0),
      primaryColor: AppColors.maindarkColor,
      scaffoldBackgroundColor: Colors.transparent);
}
