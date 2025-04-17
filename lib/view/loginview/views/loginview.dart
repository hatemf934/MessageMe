import 'package:chat_group/constant.dart';
import 'package:chat_group/core/colorsmanager.dart';
import 'package:chat_group/core/paddingmanager.dart';
import 'package:chat_group/core/routemanger.dart';
import 'package:chat_group/core/textmanager.dart';
import 'package:chat_group/core/widthandhightmanager.dart';
import 'package:chat_group/view/chatview/views/chatview.dart';
import 'package:chat_group/widget/textbuttoncustom.dart';
import 'package:chat_group/widget/button_custom.dart';
import 'package:chat_group/widget/textfield_custom.dart';
import 'package:flutter/material.dart';

class Loginview extends StatelessWidget {
  const Loginview({super.key});
  static String id = RouteManager.kLoginview;
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
              colorfocus: kSecondryColor,
              colorenable: kPrimaryColor,
              hintlabel: Textmanager.kEnterEmail,
            ),
            SizedBox(
              height: Hightmanager.h20,
            ),
            TextFormFieldCustom(
              colorfocus: kSecondryColor,
              colorenable: kPrimaryColor,
              obscureText: true,
              hintlabel: Textmanager.kEnterPassword,
            ),
            TextbuttonCustom(
              onPressed: () {},
              colorbutton: kPrimaryColor,
              textbutton: Textmanager.kForgetPassword,
            ),
            ButtonCustom(
              colortext: kSecondryColor,
              color: kPrimaryColor,
              onpressed: () {
                Navigator.pushNamed(context, Chatview.id);
              },
              textbuttom: Textmanager.ksignin,
            ),
          ],
        ),
      ),
    );
  }
}
