import 'package:chat_group/constant.dart';
import 'package:chat_group/core/utils/borderradiues.dart';
import 'package:chat_group/core/utils/colorsmanager.dart';
import 'package:flutter/material.dart';

Future<void> showDatePickerDialog(
    BuildContext context, Function(DateTime) onDateSelected) async {
  final DateTime? picked = await showDatePicker(
    context: context,
    initialDate: DateTime.now().subtract(const Duration(days: 365 * 18)),
    firstDate: DateTime(1900),
    lastDate: DateTime.now(),
    builder: (context, child) {
      return Theme(
        data: Theme.of(context).copyWith(
          dialogBackgroundColor: kPrimaryColor,
          inputDecorationTheme: InputDecorationTheme(
            labelStyle: TextStyle(color: Colorsmanager.kwhite),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colorsmanager.kwhite),
                borderRadius: BorderRadius.circular(Borderradiues.bo10)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colorsmanager.kwhite),
                borderRadius: BorderRadius.circular(Borderradiues.bo10)),
          ),
          textSelectionTheme: TextSelectionThemeData(
              cursorColor: Colorsmanager.kwhite,
              selectionColor: Colorsmanager.kwhite.withOpacity(0.3),
              selectionHandleColor: Colorsmanager.kwhite),
          textTheme:
              TextTheme(bodyMedium: TextStyle(color: Colorsmanager.kwhite)),
          dividerTheme: DividerThemeData(color: Colorsmanager.kwhite),
          splashColor: Colorsmanager.kTransparent,
          colorScheme: ColorScheme.light(
            primary: kPrimaryColor,
            onPrimary: Colorsmanager.kwhite,
            onSurface: Colorsmanager.kwhite,
            surface: kPrimaryColor,
          ),
          textButtonTheme: TextButtonThemeData(
            style: TextButton.styleFrom(foregroundColor: Colorsmanager.kwhite),
          ),
        ),
        child: child!,
      );
    },
  );
  if (picked != null) {
    onDateSelected(picked);
  }
}
