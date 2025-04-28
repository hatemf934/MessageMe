import 'package:chat_group/constant.dart';
import 'package:chat_group/core/colorsmanager.dart';
import 'package:chat_group/core/fontsizemanager.dart';
import 'package:chat_group/view/completeprofile/widget/custom_text_filed_profile.dart';
import 'package:country_code_picker/country_code_picker.dart';
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
              CountryCodePicker(
                // searchStyle: TextStyle(color: Colors.white, fontSize: 16.0),
                closeIcon: Icon(
                  Icons.close,
                  color: Colorsmanager.kwhite,
                ),
                searchDecoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: BorderSide.none,
                  ),
                  hintText: "Search a country...",
                  hintStyle: TextStyle(
                      color: Colors.grey[800],
                      fontSize: Fontsizemanager.font15),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 8, vertical: 10.0),
                  prefixIcon: Icon(Icons.search, color: Colors.grey[800]),
                ),
                dialogBackgroundColor: kPrimaryColor,
                dialogTextStyle: TextStyle(color: Colorsmanager.kwhite),
                headerTextStyle: TextStyle(
                    color: Colorsmanager.kwhite,
                    fontSize: Fontsizemanager.font20),
                initialSelection: "eg",
                favorite: ['+966', 'eg'],
                padding: EdgeInsets.only(bottom: 8),
                showCountryOnly: false,
                showFlag: true,
              ),
              SizedBox(width: 4),
            ],
          ),
        ),
      ),
      suffixWidget: const Icon(Icons.phone, color: Colors.grey),
    );
  }
}
