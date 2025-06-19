import 'package:chat_group/constant.dart';
import 'package:chat_group/core/utils/assets_manager.dart';
import 'package:chat_group/core/utils/borderradiues.dart';
import 'package:chat_group/core/utils/colorsmanager.dart';
import 'package:chat_group/core/utils/widthandhightmanager.dart';
import 'package:flutter/material.dart';

class CustomGoogleButoon extends StatelessWidget {
  const CustomGoogleButoon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: Hightmanager.h50,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            kPrimaryColor,
            kSecondryColor,
            // kPrimaryColor,
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        border:
            Border.all(color: Colorsmanager.kborder, width: Widthmanager.w2),
        borderRadius: BorderRadius.circular(Borderradiues.bo30),
      ),
      child: Center(
          child: SizedBox(
              height: Hightmanager.h30,
              width: Widthmanager.w30,
              child: Image.asset(AssetsManager.kgooglelogo))),
    );
  }
}
