import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ButtonCustom extends StatelessWidget {
  ButtonCustom(
      {super.key,
      required this.textbuttom,
      this.onpressed,
      required this.color});
  final String textbuttom;
  VoidCallback? onpressed;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      minWidth: double.infinity,
      height: 50,
      textColor: Colors.white,
      color: color,
      onPressed: onpressed,
      child: Text(
        textbuttom,
        style: const TextStyle(
          fontSize: 20,
        ),
      ),
    );
  }
}
