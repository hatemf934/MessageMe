import 'package:chat_group/constant.dart';
import 'package:chat_group/core/paddingmanager.dart';
import 'package:chat_group/core/routemanger.dart';
import 'package:chat_group/core/textmanager.dart';
import 'package:chat_group/core/widthandhightmanager.dart';
import 'package:chat_group/view/chatview/views/chatview.dart';
import 'package:chat_group/widget/custom_google_button.dart';
import 'package:chat_group/widget/ordivider.dart';
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
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: Paddingmanager.p20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: Hightmanager.h60),
            Image.asset(klogo, height: Hightmanager.h200),
            SizedBox(
              height: Hightmanager.h20,
            ),
            TextFormFieldCustom(
              colorfocus: kPrimaryColor,
              colorenable: kSecondryColor,
              hintlabel: Textmanager.kEnterEmail,
            ),
            TextFormFieldCustom(
              colorfocus: kPrimaryColor,
              colorenable: kSecondryColor,
              obscureText: true,
              hintlabel: Textmanager.kEnterPassword,
            ),
            TextbuttonCustom(
              onPressed: () {},
              colorbutton: kPrimaryColor,
              textbutton: Textmanager.kForgetPassword,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(Textmanager.kNotHaveAccount,
                    style: Theme.of(context).textTheme.titleMedium!),
                TextbuttonCustom(
                    onPressed: () {},
                    textbutton: Textmanager.ksignup,
                    colorbutton: kPrimaryColor),
              ],
            ),
            const OrDivider(),
            SizedBox(height: Hightmanager.h20),
            const CustomGoogleButoon(),
            SizedBox(height: Hightmanager.h20),
            ButtonCustom(
              colortext: kSecondryColor,
              color: kPrimaryColor,
              onpressed: () {
                Navigator.pushNamed(context, Chatview.id);
              },
              textbuttom: Textmanager.klogin,
            ),
            SizedBox(height: Hightmanager.h50),
          ],
        ),
      ),
    );
  }
}
