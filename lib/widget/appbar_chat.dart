import 'package:chat_group/constant.dart';
import 'package:chat_group/core/colorsmanager.dart';
import 'package:chat_group/core/widthandhightmanager.dart';
import 'package:flutter/material.dart';

class AppbarChat extends StatelessWidget {
  const AppbarChat({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          klogo,
          width: Widthmanager.w40,
        ),
        SizedBox(width: Widthmanager.w20),
        Text(
          kTitle,
          style: TextStyle(
              color: Colorsmanager.kwhite, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
