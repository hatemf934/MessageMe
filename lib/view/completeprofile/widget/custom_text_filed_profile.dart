import 'package:chat_group/constant.dart';
import 'package:chat_group/core/colorsmanager.dart';
import 'package:chat_group/core/fontsizemanager.dart';
import 'package:chat_group/core/paddingmanager.dart';
import 'package:chat_group/core/widthandhightmanager.dart';
import 'package:flutter/material.dart';

class CustomTextFieldName extends StatelessWidget {
  final String label;
  final String hintText;
  final TextEditingController controller;
  final bool isValid;
  final Widget? prefixWidget;
  final Widget? suffixWidget;
  final TextInputType keyboardType;
  const CustomTextFieldName({
    Key? key,
    required this.label,
    required this.hintText,
    required this.controller,
    this.isValid = false,
    this.prefixWidget,
    this.suffixWidget,
    this.keyboardType = TextInputType.text,
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
        TextField(
          controller: controller,
          keyboardType: keyboardType,
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(color: Colorsmanager.kGrey300),
            contentPadding: EdgeInsets.symmetric(vertical: Paddingmanager.p8),
            isDense: true,
            border: InputBorder.none,
            prefixIcon: prefixWidget,
            suffixIcon: isValid
                ? const Icon(Icons.check, color: kPrimaryColor)
                : suffixWidget,
          ),
        ),
        Container(
          height: Hightmanager.h1,
          color: isValid ? kPrimaryColor : Colorsmanager.kGrey300,
        ),
        SizedBox(height: Hightmanager.h16),
      ],
    );
  }
}
