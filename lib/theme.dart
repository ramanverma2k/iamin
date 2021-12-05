import 'package:flutter/material.dart';

final ThemeData myThemeData = ThemeData(
  scaffoldBackgroundColor: const Color(0xFF1b1e31),
  visualDensity: VisualDensity.adaptivePlatformDensity,
  cardTheme: CardTheme(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15.0),
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor:
          MaterialStateProperty.all<Color>(const Color(0xFF242947)),
    ),
  ),
);
