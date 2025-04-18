import 'package:chat_group/view/completeprofile/widget/custom_text_filed_profile.dart';
import 'package:flutter/material.dart';

class PhoneNumberField extends StatelessWidget {
  final String label;
  final String hintText;
  final TextEditingController controller;
  final bool isValid;
  final Function()? onCountryCodeTap;
  final String countryCode;
  final String countryFlag;

  const PhoneNumberField({
    Key? key,
    required this.label,
    required this.hintText,
    required this.controller,
    this.isValid = false,
    this.onCountryCodeTap,
    this.countryCode = "+1",
    this.countryFlag = "🇪🇬",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomTextFieldProfil(
      label: label,
      hintText: hintText,
      controller: controller,
      isValid: isValid,
      keyboardType: TextInputType.phone,
      prefixWidget: InkWell(
        onTap: onCountryCodeTap,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(countryFlag),
              const SizedBox(width: 4),
              Text(countryCode),
              const Icon(Icons.arrow_drop_down, size: 16),
              const SizedBox(width: 4),
            ],
          ),
        ),
      ),
      suffixWidget: const Icon(Icons.phone, color: Colors.grey),
    );
  }
}
