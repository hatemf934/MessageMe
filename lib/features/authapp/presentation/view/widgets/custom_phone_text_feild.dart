import 'package:chat_group/core/utils/colorsmanager.dart';
import 'package:chat_group/core/utils/paddingmanager.dart';
import 'package:chat_group/core/utils/widthandhightmanager.dart';
import 'package:chat_group/features/authapp/presentation/view/widgets/country_code_picker_custom.dart';
import 'package:chat_group/features/authapp/presentation/view/widgets/custom_text_filed_profile.dart';
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
    return CustomTextFieldName(
      label: label,
      hintText: hintText,
      controller: controller,
      isValid: isValid,
      keyboardType: TextInputType.phone,
      prefixWidget: InkWell(
        onTap: onCountryCodeTap,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: Paddingmanager.p8),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const CountryCodePickerCustom(),
              SizedBox(width: Widthmanager.w4),
            ],
          ),
        ),
      ),
      suffixWidget: Icon(Icons.phone, color: Colorsmanager.kGrey600),
    );
  }
}
