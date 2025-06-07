import 'package:chat_group/core/utils/colorsmanager.dart';
import 'package:chat_group/core/utils/fontsizemanager.dart';
import 'package:chat_group/core/utils/textmanager.dart';
import 'package:chat_group/core/utils/widthandhightmanager.dart';
import 'package:chat_group/core/widget/showdatapicker.dart';
import 'package:chat_group/features/authapp/presentation/view/widgets/custom_for_item_complete_profile.dart';
import 'package:flutter/material.dart';

class DateOfBirthField extends StatelessWidget {
  final String label;
  final String value;
  final bool isValid;
  final Function(DateTime) onDateSelected;

  const DateOfBirthField({
    super.key,
    required this.label,
    required this.value,
    required this.onDateSelected,
    this.isValid = false,
  });

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
            showDatePickerDialog(
              context,
              (selectedDate) {
                onDateSelected(selectedDate);
              },
            );
          },
          child: CustomWidgetForItemCompleteProfile(
              value: value,
              isValid: isValid,
              title: Textmanager.kDateOfBrith,
              icon: Icons.calendar_today),
        ),
        SizedBox(height: Hightmanager.h16),
      ],
    );
  }
}
