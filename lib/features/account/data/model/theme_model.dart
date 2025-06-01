import 'package:chat_group/core/utils/colorsmanager.dart';
import 'package:chat_group/core/utils/fontsizemanager.dart';
import 'package:flutter/material.dart';

class ThemeModel {
  final darkmode = ThemeData(
    useMaterial3: false,
    primaryColor: Colorsmanager.kwhite,
    scaffoldBackgroundColor: Colorsmanager.kGrey900,
    textTheme: TextTheme(
      titleMedium: TextStyle(
        fontSize: Fontsizemanager.font15,
        color: Colorsmanager.kwhite,
      ),
    ),
  );
  final lightmode = ThemeData(
    useMaterial3: false,
    primaryColor: Colorsmanager.kblack,
    scaffoldBackgroundColor: Colorsmanager.kwhite,
    textTheme: TextTheme(
      titleMedium: TextStyle(
        fontSize: Fontsizemanager.font15,
        color: Colorsmanager.kblack,
      ),
    ),
  );
}
