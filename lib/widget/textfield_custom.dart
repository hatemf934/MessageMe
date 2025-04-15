import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TextFormFieldCustom extends StatelessWidget {
  TextFormFieldCustom(
      {super.key,
      required this.hintlabel,
      this.onchange,
      this.validator,
      this.obscureText = false});
  Function(String)? onchange;
  final String? Function(String?)? validator;
  final String hintlabel;
  bool obscureText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(color: Colors.black),
      obscureText: obscureText,
      validator: validator,
      onChanged: onchange,
      decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: Colors.black,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Colors.orange),
          ),
          hintText: hintlabel,
          hintStyle: const TextStyle(color: Colors.black),
          label: Text(hintlabel)),
    );
  }
}
