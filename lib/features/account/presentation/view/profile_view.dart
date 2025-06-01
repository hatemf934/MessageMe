import 'package:chat_group/constant.dart';
import 'package:chat_group/core/utils/assets_manager.dart';
import 'package:chat_group/core/utils/colorsmanager.dart';
import 'package:chat_group/core/utils/fontsizemanager.dart';
import 'package:chat_group/core/utils/paddingmanager.dart';
import 'package:chat_group/core/utils/routemanger.dart';
import 'package:chat_group/core/utils/textmanager.dart';
import 'package:chat_group/core/utils/widthandhightmanager.dart';
import 'package:chat_group/features/account/presentation/view/widgets/list_tile_profile.dart';
import 'package:flutter/material.dart';

class Profileview extends StatelessWidget {
  const Profileview({super.key});
  static String id = RouteManager.kProfileViewPersonal;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(Paddingmanager.p15),
        child: Column(
          children: [
            SizedBox(height: Hightmanager.h20),
            Row(
              children: [
                IconButton(
                  padding: EdgeInsets.zero,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    size: Fontsizemanager.font30,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                SizedBox(width: Widthmanager.w20),
                Text(
                  Textmanager.kProfile,
                  style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontSize: Fontsizemanager.font20,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: Hightmanager.h30),
            Container(
              width: sizeProfilePhoto,
              height: sizeProfilePhoto,
              decoration: BoxDecoration(
                color: Colorsmanager.kGrey300,
                shape: BoxShape.circle,
              ),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(sizeProfilePhoto / 2),
                  child: Image.asset(
                    AssetsManager.kprofile,
                    fit: BoxFit.cover,
                  )),
            ),
            SizedBox(height: Hightmanager.h30),
            ListTileProfile(
              iconDataLeading: Icons.person,
              title: Textmanager.kName,
              subtitle: "hatem fathy",
            ),
            ListTileProfile(
              iconDataLeading: Icons.phone,
              title: Textmanager.kPhone,
              subtitle: "0106064296",
            ),
            ListTileProfile(
              iconDataLeading: Icons.email,
              title: Textmanager.kEmail,
              subtitle: "hatemf934@gmail.com",
            )
          ],
        ),
      ),
    );
  }
}
