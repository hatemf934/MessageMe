import 'package:chat_group/core/borderradiues.dart';
import 'package:chat_group/core/colorsmanager.dart';
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
      textAlign: TextAlign.center,
      style: TextStyle(color: Colorsmanager.kblack),
      obscureText: obscureText,
      validator: validator,
      onChanged: onchange,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(Borderradiues.bo10),
          borderSide: BorderSide(
            color: colorenable!,
            width: 2,
          ),
        ),

        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(Borderradiues.bo10),
          borderSide: BorderSide(color: colorfocus!, width: 2),
        ),
        hintText: hintlabel,
        hintStyle: TextStyle(color: Colorsmanager.kMaingrey),
        // label: Text(hintlabel)
      ),
    );
  }
}
