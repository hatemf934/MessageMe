import 'package:chat_group/core/utils/colorsmanager.dart';
import 'package:chat_group/core/utils/fontsizemanager.dart';
import 'package:chat_group/core/utils/text_validate_manager.dart';
import 'package:chat_group/core/utils/textmanager.dart';
import 'package:chat_group/core/utils/widthandhightmanager.dart';
import 'package:chat_group/core/widget/message_error_validate.dart';
import 'package:chat_group/core/widget/showdatapicker.dart';
import 'package:chat_group/features/authapp/presentation/view/widgets/custom_for_item_complete_profile.dart';
import 'package:flutter/material.dart';

class DateOfBirthField extends StatelessWidget {
  final String label;
  final String value;
  final Function(DateTime) onDateSelected;
  final bool showError;

  const DateOfBirthField({
    super.key,
    required this.label,
    required this.value,
    required this.onDateSelected,
    required this.showError,
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
              isValid: value.isNotEmpty,
              title: Textmanager.kDateOfBrith,
              icon: Icons.calendar_today),
        ),
        if (showError && value.isEmpty)
          MessageErrorValidate(
            errorMessage: TextValidateManager.pleaseSelectDataOfBrith,
          ),
        SizedBox(height: Hightmanager.h16),
      ],
    );
  }
}
