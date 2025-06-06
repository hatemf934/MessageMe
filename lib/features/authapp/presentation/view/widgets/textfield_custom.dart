import 'package:chat_group/constant.dart';
import 'package:chat_group/core/utils/borderradiues.dart';
import 'package:chat_group/core/utils/colorsmanager.dart';
import 'package:chat_group/core/utils/widthandhightmanager.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TextFormFieldCustom extends StatelessWidget {
  TextFormFieldCustom(
      {super.key,
      required this.hintlabel,
      this.onchange,
      this.validator,
      this.obscureText = false,
      this.colorenable,
      this.colorfocus});
  Function(String)? onchange;
  final String? Function(String?)? validator;
  final String hintlabel;
  final Color? colorfocus;
  final Color? colorenable;
  bool obscureText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: kPrimaryColor,
      textAlign: TextAlign.center,
      style: TextStyle(color: Theme.of(context).textTheme.titleMedium!.color),
      obscureText: obscureText,
      validator: validator,
      onChanged: onchange,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(Borderradiues.bo10),
          borderSide: BorderSide(color: colorenable!, width: Widthmanager.w2),
        ),

        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(Borderradiues.bo10),
          borderSide: BorderSide(color: colorfocus!, width: Widthmanager.w2),
        ),
        hintText: hintlabel,
        hintStyle: TextStyle(color: Colorsmanager.kMaingrey),
        // label: Text(hintlabel)
      ),
    );
  }
}
