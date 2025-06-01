import 'package:chat_group/core/utils/colorsmanager.dart';
import 'package:chat_group/core/utils/fontsizemanager.dart';
import 'package:chat_group/core/utils/widthandhightmanager.dart';
import 'package:flutter/material.dart';

class BuildOptions extends StatelessWidget {
  const BuildOptions(
      {super.key,
      required this.icon,
      required this.label,
      required this.onPressed});
  final IconData icon;
  final String label;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onPressed,
          child: Container(
            width: Widthmanager.w70,
            height: Hightmanager.h70,
            decoration: BoxDecoration(
                border: Border.all(
                    color: Colorsmanager.kwhite, width: Widthmanager.w2),
                shape: BoxShape.circle,
                color: Colorsmanager.kTransparent),
            child: Icon(
              icon,
              color: Colorsmanager.kwhite,
              size: Fontsizemanager.font30,
            ),
          ),
        ),
        SizedBox(height: Hightmanager.h8),
        Text(
          label,
          style: TextStyle(
            color: Colorsmanager.kwhite,
          ),
        ),
      ],
    );
  }
}
