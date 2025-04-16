import 'package:chat_group/core/borderradiues.dart';
import 'package:chat_group/core/colorsmanager.dart';
import 'package:chat_group/core/fontsizemanager.dart';
import 'package:chat_group/core/widthandhightmanager.dart';
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
        borderRadius: BorderRadius.circular(Borderradiues.bo10),
      ),
      minWidth: double.infinity,
      height: Hightmanager.h50,
      textColor: Colorsmanager.kwhite,
      color: color,
      onPressed: onpressed,
      child: Text(
        textbuttom,
        style: TextStyle(
          fontSize: Fontsizemanager.font20,
        ),
      ),
    );
  }
}
