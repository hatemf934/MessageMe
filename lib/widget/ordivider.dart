import 'package:chat_group/core/colorsmanager.dart';
import 'package:chat_group/core/textmanager.dart';
import 'package:flutter/material.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Divider(
            thickness: 0.5,
            color: Colorsmanager.kMaingrey,
          ),
        ),
        Text(
          Textmanager.kOr,
          style: TextStyle(
              color: Colorsmanager.kMaingrey, fontWeight: FontWeight.bold),
        ),
        Expanded(
          child: Divider(
            thickness: 0.5,
            color: Colorsmanager.kMaingrey,
          ),
        ),
      ],
    );
  }
}
