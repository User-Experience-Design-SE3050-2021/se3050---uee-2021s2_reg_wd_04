import 'package:flutter/material.dart';

ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    primarySwatch: Colors.red,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    appBarTheme: appBarTheme(),
    textTheme: textTheme(),
    inputDecorationTheme: inputDecorationTheme(),
  );
}

AppBarTheme appBarTheme() {
  return AppBarTheme();
}

TextTheme textTheme() {
  return TextTheme(
    headline1: TextStyle(
      color: Color(0xffFD051B),
      fontSize: 30,
      fontWeight: FontWeight.bold,
    ),
    bodyText1: TextStyle(
      color: Color(0xffFD051B),
      fontSize: 30,
      fontWeight: FontWeight.bold,
    ),
  );
}

InputDecorationTheme inputDecorationTheme() {
  return InputDecorationTheme(
    border: InputBorder.none,
  );
}

ElevatedButtonThemeData elevatedButtonThemeData() {
  return ElevatedButtonThemeData(
    style: ButtonStyle(
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
          side: BorderSide(color: Colors.red),
        ),
      ),
    ),
  );
}
