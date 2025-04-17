import 'package:chat_group/constant.dart';
import 'package:chat_group/core/colorsmanager.dart';
import 'package:chat_group/core/paddingmanager.dart';
import 'package:chat_group/core/routemanger.dart';
import 'package:chat_group/core/textmanager.dart';
import 'package:chat_group/core/widthandhightmanager.dart';
import 'package:chat_group/view/chatview/views/chatview.dart';
import 'package:chat_group/widget/button_custom.dart';
import 'package:chat_group/widget/textbuttoncustom.dart';
import 'package:chat_group/widget/textfield_custom.dart';
import 'package:flutter/material.dart';

class Regesterview extends StatelessWidget {
  const Regesterview({super.key});
  static String id = RouteManager.kResgesterview;
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
            SizedBox(
              height: Hightmanager.h20,
            ),
            TextFormFieldCustom(
              colorenable: kSecondryColor,
              colorfocus: kPrimaryColor,
              hintlabel: Textmanager.kEnterEmail,
            ),
            SizedBox(
              height: Hightmanager.h20,
            ),
            TextFormFieldCustom(
              colorenable: kSecondryColor,
              colorfocus: kPrimaryColor,
              obscureText: true,
              hintlabel: Textmanager.kEnterPassword,
            ),
            SizedBox(
              height: Hightmanager.h20,
            ),
            ButtonCustom(
              colortext: kPrimaryColor,
              color: kSecondryColor,
              onpressed: () {
                Navigator.pushNamed(context, Chatview.id);
              },
              textbuttom: Textmanager.ksignin,
            ),
            TextbuttonCustom(
                onPressed: () {},
                textbutton: Textmanager.kHaveAccount,
                colorbutton: kSecondryColor)
          ],
        ),
      ),
    );
  }
}
