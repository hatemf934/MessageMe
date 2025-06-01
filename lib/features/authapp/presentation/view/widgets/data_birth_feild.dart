import 'package:chat_group/constant.dart';
import 'package:chat_group/core/utils/borderradiues.dart';
import 'package:chat_group/core/utils/colorsmanager.dart';
import 'package:chat_group/core/utils/fontsizemanager.dart';
import 'package:chat_group/core/utils/paddingmanager.dart';
import 'package:chat_group/core/utils/textmanager.dart';
import 'package:chat_group/core/utils/widthandhightmanager.dart';
import 'package:flutter/material.dart';

class DateOfBirthField extends StatelessWidget {
  final String label;
  final String value;
  final bool isValid;
  final Function(DateTime) onDateSelected;

  const DateOfBirthField({
    Key? key,
    required this.label,
    required this.value,
    required this.onDateSelected,
    this.isValid = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: Fontsizemanager.font15,
            color: Colorsmanager.kGrey600,
          ),
        ),
        SizedBox(height: Hightmanager.h8),
        InkWell(
          onTap: () async {
            final DateTime? picked = await showDatePicker(
              context: context,
              initialDate:
                  DateTime.now().subtract(const Duration(days: 365 * 18)),
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
                          borderRadius:
                              BorderRadius.circular(Borderradiues.bo10)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colorsmanager.kwhite),
                          borderRadius:
                              BorderRadius.circular(Borderradiues.bo10)),
                    ),
                    textSelectionTheme: TextSelectionThemeData(
                        cursorColor: Colorsmanager.kwhite,
                        selectionColor: Colorsmanager.kwhite.withOpacity(0.3),
                        selectionHandleColor: Colorsmanager.kwhite),
                    textTheme: TextTheme(
                        bodyMedium: TextStyle(color: Colorsmanager.kwhite)),
                    dividerTheme: DividerThemeData(color: Colorsmanager.kwhite),
                    splashColor: Colorsmanager.kTransparent,
                    colorScheme: ColorScheme.light(
                      primary: kPrimaryColor,
                      onPrimary: Colorsmanager.kwhite,
                      onSurface: Colorsmanager.kwhite,
                      surface: kPrimaryColor,
                    ),
                    textButtonTheme: TextButtonThemeData(
                      style: TextButton.styleFrom(
                          foregroundColor: Colorsmanager.kwhite),
                    ),
                  ),
                  child: child!,
                );
              },
            );
            if (picked != null) {
              onDateSelected(picked);
            }
          },
          child: Container(
            padding: EdgeInsets.symmetric(vertical: Paddingmanager.p8),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: isValid ? kPrimaryColor : Colorsmanager.kGrey300,
                  width: Widthmanager.w1,
                ),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  value.isEmpty ? Textmanager.kDateOfBrith : value,
                  style: TextStyle(
                    color: value.isEmpty
                        ? Colorsmanager.kGrey300
                        : Theme.of(context).primaryColor,
                  ),
                ),
                Icon(
                  Icons.calendar_today,
                  size: Fontsizemanager.font20,
                  color: Colorsmanager.kGrey600,
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: Hightmanager.h16),
      ],
    );
  }
}
