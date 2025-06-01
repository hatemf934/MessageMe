import 'package:flutter/material.dart';

class TextbuttonCustom extends StatelessWidget {
  const TextbuttonCustom(
      {super.key,
      required this.onPressed,
      required this.textbutton,
      required this.colorbutton});
  final void Function()? onPressed;
  final String textbutton;
  final Color colorbutton;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        textbutton,
        style: TextStyle(
          color: colorbutton, // Text color
          // Underline
        ),
      ),
    );
  }
}
