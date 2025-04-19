import 'package:chat_group/core/assets_manager.dart';
import 'package:chat_group/core/borderradiues.dart';
import 'package:chat_group/core/colorsmanager.dart';
import 'package:chat_group/core/fontsizemanager.dart';
import 'package:chat_group/core/paddingmanager.dart';
import 'package:chat_group/core/widthandhightmanager.dart';
import 'package:flutter/material.dart';

class ProfileListTile extends StatelessWidget {
  const ProfileListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(right: Paddingmanager.p23, left: Paddingmanager.p10),
      child: SizedBox(
        width: double.infinity,
        child: Row(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(Borderradiues.bo40),
                child: Image.asset(
                  height: Hightmanager.h80,
                  width: Widthmanager.w80,
                  AssetsManager.kprofile,
                  fit: BoxFit.cover,
                )),
            SizedBox(width: Widthmanager.w20),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hatem Fathy',
                  style: TextStyle(
                      color: Colorsmanager.kblack,
                      fontSize: Fontsizemanager.font20,
                      fontWeight: FontWeight.bold),
                ),
                Text("hatemf934@gmail.com",
                    style: TextStyle(color: Colorsmanager.kblack)),
              ],
            ),
            const Spacer(),
            const Icon(Icons.chevron_right),
          ],
        ),
      ),
    );
  }
}
