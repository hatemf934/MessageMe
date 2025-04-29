import 'package:flutter/material.dart';

class ThemeModel {
  final darkmode = ThemeData(
    useMaterial3: false,
    brightness: Brightness.dark,
  );
  final lightmode = ThemeData(
    useMaterial3: false,
    brightness: Brightness.light,
  );
}
