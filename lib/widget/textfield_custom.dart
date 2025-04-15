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
      style: const TextStyle(color: Colors.black),
      obscureText: obscureText,
      validator: validator,
      onChanged: onchange,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: colorenable!,
            width: 2,
          ),
        ),

        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: colorfocus!, width: 2),
        ),
        hintText: hintlabel,
        hintStyle: const TextStyle(color: Colors.grey),
        // label: Text(hintlabel)
      ),
    );
  }
}
