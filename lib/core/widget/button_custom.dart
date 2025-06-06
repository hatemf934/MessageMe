import 'package:chat_group/core/utils/borderradiues.dart';
import 'package:chat_group/core/utils/colorsmanager.dart';
import 'package:chat_group/core/utils/fontsizemanager.dart';
import 'package:chat_group/core/utils/widthandhightmanager.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ButtonCustom extends StatelessWidget {
  ButtonCustom(
      {super.key,
      required this.textbuttom,
      this.height = 50,
      this.onpressed,
      required this.color,
      required this.colortext});
  final String textbuttom;
  VoidCallback? onpressed;
  final Color color;
  final Color colortext;
  final double height;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Borderradiues.bo30),
      ),
      minWidth: Widthmanager.w380,
      height: height,
      textColor: Colorsmanager.kwhite,
      color: color,
      onPressed: onpressed,
      child: Text(
        textbuttom,
        style: TextStyle(fontSize: Fontsizemanager.font20, color: colortext),
      ),
    );
  }
}
