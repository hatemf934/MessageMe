import 'package:chat_group/constant.dart';
import 'package:chat_group/core/utils/assets_manager.dart';
import 'package:chat_group/core/utils/fontsizemanager.dart';
import 'package:chat_group/core/utils/paddingmanager.dart';
import 'package:chat_group/core/utils/routemanger.dart';
import 'package:chat_group/core/utils/textmanager.dart';
import 'package:chat_group/core/utils/widthandhightmanager.dart';
import 'package:chat_group/core/widget/custom_google_button.dart';
import 'package:chat_group/core/widget/ordivider.dart';
import 'package:chat_group/features/authapp/presentation/view/loginview.dart';
import 'package:chat_group/features/authapp/presentation/view/regesterview.dart';
import 'package:chat_group/core/widget/button_custom.dart';
import 'package:flutter/material.dart';

class Homeview extends StatelessWidget {
  const Homeview({super.key});
  static String id = RouteManager.kHomeview;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: Paddingmanager.p20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: Hightmanager.h30),
            Image.asset(
              AssetsManager.klogo,
              height: Hightmanager.h300,
            ),
            SizedBox(height: Hightmanager.h20),
            Text(
              kTitle,
              style: TextStyle(
                  fontSize: Fontsizemanager.font50,
                  color: kPrimaryColor,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: Hightmanager.h70),
            ButtonCustom(
              colortext: kSecondryColor,
              color: kPrimaryColor,
              onpressed: () {
                Navigator.pushNamed(context, Loginview.id);
              },
              textbuttom: Textmanager.ksignin,
            ),
            SizedBox(height: Hightmanager.h20),
            ButtonCustom(
              colortext: kPrimaryColor,
              color: kSecondryColor,
              onpressed: () {
                Navigator.pushNamed(context, Regesterview.id);
              },
              textbuttom: Textmanager.ksignup,
            ),
            const Spacer(flex: 2),
            const OrDivider(),
            SizedBox(height: Hightmanager.h50),
            const CustomGoogleButoon(),
            const Spacer(flex: 1),
          ],
        ),
      ),
    );
  }
}
