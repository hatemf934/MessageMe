import 'package:chat_group/constant.dart';
import 'package:chat_group/core/colorsmanager.dart';
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
            fontSize: 14,
            color: Colors.grey[600],
          ),
        ),
        const SizedBox(height: 8),
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
                    textTheme: TextTheme(
                        bodyMedium: TextStyle(color: Colorsmanager.kwhite)),
                    splashColor: Colors.transparent,
                    dividerTheme: DividerThemeData(color: Colorsmanager.kwhite),
                    colorScheme: ColorScheme.light(
                        primary: Colorsmanager.kwhite,
                        onPrimary: kPrimaryColor,
                        onSurface: Colorsmanager.kwhite,
                        surface: kPrimaryColor),
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
            padding: const EdgeInsets.symmetric(vertical: 8),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: isValid ? Colors.teal : Colors.grey[300]!,
                  width: 1,
                ),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  value.isEmpty ? 'Date of Birth' : value,
                  style: TextStyle(
                    color: value.isEmpty ? Colors.grey[400] : Colors.black,
                  ),
                ),
                Icon(
                  Icons.calendar_today,
                  size: 20,
                  color: Colors.grey[600],
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}
