import 'package:chat_group/core/utils/assets_manager.dart';
import 'package:chat_group/core/utils/borderradiues.dart';
import 'package:chat_group/core/utils/colorsmanager.dart';
import 'package:chat_group/core/utils/widthandhightmanager.dart';
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
            border: Border.all(
                color: Colorsmanager.kborder, width: Widthmanager.w2),
            borderRadius: BorderRadius.circular(Borderradiues.bo20),
          ),
          child: Center(
              child: SizedBox(
                  height: Hightmanager.h30,
                  width: Widthmanager.w30,
                  child: Image.asset(AssetsManager.kgooglelogo))),
        ),
        Container(
          width: Widthmanager.w100,
          height: Hightmanager.h50,
          decoration: BoxDecoration(
            border: Border.all(
                color: Colorsmanager.kborder, width: Widthmanager.w2),
            borderRadius: BorderRadius.circular(Borderradiues.bo20),
          ),
          child: Center(
            child: SizedBox(
              height: Hightmanager.h25,
              width: Widthmanager.w30,
              child: Image.asset(AssetsManager.kfacelogo),
            ),
          ),
        ),
      ],
    );
  }
}
