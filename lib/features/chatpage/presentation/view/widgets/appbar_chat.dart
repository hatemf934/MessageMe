import 'package:chat_group/constant.dart';
import 'package:chat_group/core/utils/colorsmanager.dart';
import 'package:chat_group/core/utils/fontsizemanager.dart';
import 'package:chat_group/core/utils/widthandhightmanager.dart';
import 'package:flutter/material.dart';

class AppbarTitle extends StatelessWidget {
  const AppbarTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: Widthmanager.w60),
        Text(
          kTitle,
          style: TextStyle(
              fontSize: Fontsizemanager.font30,
              color: Colorsmanager.kwhite,
              fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
