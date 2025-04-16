import 'package:chat_group/constant.dart';
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
          child: Divider(thickness: 1, height: 1, color: kPrimaryColor),
        ),
        Text(
          Textmanager.kOr,
          style: TextStyle(
              color: Colorsmanager.ktitlecolor, fontWeight: FontWeight.bold),
        ),
        Expanded(
          child: Divider(thickness: 1, height: 2, color: kSecondryColor),
        ),
      ],
    );
  }
}
