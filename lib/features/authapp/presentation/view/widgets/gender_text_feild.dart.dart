import 'package:chat_group/core/utils/colorsmanager.dart';
import 'package:chat_group/core/utils/fontsizemanager.dart';
import 'package:chat_group/core/utils/text_validate_manager.dart';
import 'package:chat_group/core/utils/textmanager.dart';
import 'package:chat_group/core/utils/widthandhightmanager.dart';
import 'package:chat_group/core/widget/message_error_validate.dart';
import 'package:chat_group/core/widget/showgenderselection.dart';
import 'package:chat_group/features/authapp/presentation/view/widgets/custom_for_item_complete_profile.dart';
import 'package:flutter/material.dart';

class GenderDropdownField extends StatelessWidget {
  final String label;
  final String value;
  final bool showError;
  final Function(String?) onChanged;
  final List<String> options;

  const GenderDropdownField({
    super.key,
    required this.label,
    required this.value,
    required this.onChanged,
    required this.showError,
    this.options = const [
      'Male',
      'Female',
    ],
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
              showGenderSelectionDialog(
                  context: context, options: options, onChanged: onChanged);
            },
            child: CustomWidgetForItemCompleteProfile(
                value: value,
                isValid: value.isNotEmpty,
                title: Textmanager.kGender,
                icon: Icons.keyboard_arrow_down)),
        if (showError && value.isEmpty)
          MessageErrorValidate(
              errorMessage: TextValidateManager.pleaseSelectGender),
        SizedBox(height: Hightmanager.h16)
      ],
    );
  }
}
