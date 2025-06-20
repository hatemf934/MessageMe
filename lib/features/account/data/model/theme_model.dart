import 'package:chat_group/core/utils/colorsmanager.dart';
import 'package:chat_group/core/utils/fontsizemanager.dart';
import 'package:flutter/material.dart';

class ThemeModel {
  final darkmode = ThemeData(
    useMaterial3: false,
    primaryColor: Colorsmanager.kwhite,
    hoverColor: Colorsmanager.kFillSearchColor,
    scaffoldBackgroundColor: Colorsmanager.kblackscaffold,
    textTheme: TextTheme(
        titleMedium: TextStyle(
          fontSize: Fontsizemanager.font15,
          color: Colorsmanager.kwhite,
        ),
        titleLarge: TextStyle(
          fontSize: Fontsizemanager.font20,
          color: Colorsmanager.kwhite,
        ),
        titleSmall: TextStyle(
          fontSize: Fontsizemanager.font20,
          color: Colorsmanager.kGrey600,
        )),
  );
  final lightmode = ThemeData(
    useMaterial3: false,
    primaryColor: Colorsmanager.kblack,
    hoverColor: Colorsmanager.kFillSearchColorWhite,
    scaffoldBackgroundColor: Colorsmanager.kwhite,
    textTheme: TextTheme(
        titleMedium: TextStyle(
          fontSize: Fontsizemanager.font15,
          color: Colorsmanager.kblack,
        ),
        titleLarge: TextStyle(
          fontSize: Fontsizemanager.font20,
          color: Colorsmanager.kblack,
          fontWeight: FontWeight.bold,
        ),
        titleSmall: TextStyle(
          fontSize: Fontsizemanager.font20,
          color: Colorsmanager.kGrey600,
        )),
  );
}
