import 'package:chat_group/constant.dart';
import 'package:chat_group/core/colorsmanager.dart';
import 'package:chat_group/core/fontsizemanager.dart';
import 'package:chat_group/core/paddingmanager.dart';
import 'package:chat_group/core/routemanger.dart';
import 'package:chat_group/core/textmanager.dart';
import 'package:chat_group/core/widthandhightmanager.dart';
import 'package:chat_group/view/homeview/widget/custom_google_button.dart';
import 'package:chat_group/view/homeview/widget/ordivider.dart';
import 'package:chat_group/view/loginview/views/loginview.dart';
import 'package:chat_group/view/regesterview/views/regesterview.dart';
import 'package:chat_group/widget/button_custom.dart';
import 'package:flutter/material.dart';

class Homeview extends StatelessWidget {
  const Homeview({super.key});
  static String id = RouteManager.kHomeview;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colorsmanager.kwhite,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: Paddingmanager.p20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              klogo,
              width: Widthmanager.w200,
            ),
            Text(
              kTitle,
              style: TextStyle(
                  fontSize: Fontsizemanager.font50,
                  color: Colorsmanager.ktitlecolor,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: Hightmanager.h20),
            ButtonCustom(
              color: kPrimaryColor,
              onpressed: () {
                Navigator.pushNamed(context, Loginview.id);
              },
              textbuttom: Textmanager.ksignin,
            ),
            SizedBox(height: Hightmanager.h20),
            ButtonCustom(
              color: kSecondryColor,
              onpressed: () {
                Navigator.pushNamed(context, Regesterview.id);
              },
              textbuttom: Textmanager.ksignup,
            ),
            SizedBox(height: Hightmanager.h20),
            const OrDivider(),
            SizedBox(height: Hightmanager.h20),
            const CustomGoogleButoon()
          ],
        ),
      ),
    );
  }
}
