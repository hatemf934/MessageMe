import 'package:chat_group/core/colorsmanager.dart';
import 'package:chat_group/core/fontsizemanager.dart';
import 'package:flutter/material.dart';

class ThemeModel {
  final darkmode = ThemeData(
    useMaterial3: false,
    scaffoldBackgroundColor: Colors.grey[900],
    textTheme: TextTheme(
      titleMedium: TextStyle(
        fontSize: Fontsizemanager.font15,
        color: Colorsmanager.kwhite,
      ),
    ),
  );
  final lightmode = ThemeData(
    useMaterial3: false,
    scaffoldBackgroundColor: Colorsmanager.kwhite,
    textTheme: TextTheme(
      titleMedium: TextStyle(
        fontSize: Fontsizemanager.font15,
        color: Colorsmanager.kblack,
      ),
    ),
  );
}
