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
  return TextTheme();
}

InputDecorationTheme inputDecorationTheme() {
  return InputDecorationTheme();
}

// Color(0xffFD051B)