import 'package:chat_group/constant.dart';
import 'package:chat_group/core/borderradiues.dart';
import 'package:chat_group/core/colorsmanager.dart';
import 'package:chat_group/core/widthandhightmanager.dart';
import 'package:flutter/material.dart';

class CustomGoogleButoon extends StatelessWidget {
  const CustomGoogleButoon({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          width: Widthmanager.w100,
          height: Hightmanager.h50,
          decoration: BoxDecoration(
            border: Border.all(color: Colorsmanager.kborder, width: 2),
            borderRadius: BorderRadius.circular(Borderradiues.bo20),
          ),
          child: Center(
              child: SizedBox(
                  height: Hightmanager.h30,
                  width: Widthmanager.w30,
                  child: Image.asset(kgooglelogo))),
        ),
        Container(
          width: Widthmanager.w100,
          height: Hightmanager.h50,
          decoration: BoxDecoration(
            border: Border.all(color: Colorsmanager.kborder, width: 2),
            borderRadius: BorderRadius.circular(Borderradiues.bo20),
          ),
          child: Center(
            child: SizedBox(
              height: Hightmanager.h25,
              width: Widthmanager.w30,
              child: Image.asset(
                kfacelogo,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
