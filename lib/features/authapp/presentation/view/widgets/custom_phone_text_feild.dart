import 'package:chat_group/core/utils/colorsmanager.dart';
import 'package:chat_group/core/utils/paddingmanager.dart';
import 'package:chat_group/core/utils/widthandhightmanager.dart';
import 'package:chat_group/features/authapp/presentation/view/widgets/custom_text_filed_profile.dart';
import 'package:flutter/material.dart';

class PhoneNumberField extends StatelessWidget {
  final String label;
  final String hintText;
  final TextEditingController controller;
  final bool isValid;
  // final Function()? onCountryCodeTap;
  final String? Function(String?)? validator;
  final String countryCode;
  final String countryFlag;
  final Widget widgetContryCode;

  const PhoneNumberField({
    super.key,
    required this.label,
    required this.hintText,
    required this.controller,
    required this.validator,
    this.isValid = false,
    // this.onCountryCodeTap,
    this.countryCode = "+20",
    this.countryFlag = "🇪🇬",
    required this.widgetContryCode,
  });

  @override
  Widget build(BuildContext context) {
    return CustomTextFieldName(
      validator: validator,
      label: label,
      hintText: hintText,
      controller: controller,
      isValid: isValid,
      keyboardType: TextInputType.phone,
      prefixWidget: InkWell(
        // onTap: onCountryCodeTap,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: Paddingmanager.p8),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              widgetContryCode,
              SizedBox(width: Widthmanager.w4),
            ],
          ),
        ),
      ),
      suffixWidget: Icon(Icons.phone, color: Colorsmanager.kGrey600),
    );
  }
}
