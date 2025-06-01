import 'package:chat_group/constant.dart';
import 'package:chat_group/core/utils/assets_manager.dart';
import 'package:chat_group/core/utils/paddingmanager.dart';
import 'package:chat_group/core/utils/routemanger.dart';
import 'package:chat_group/core/utils/textmanager.dart';
import 'package:chat_group/core/utils/widthandhightmanager.dart';
import 'package:chat_group/features/authapp/presentation/view/complete_profile.dart';
import 'package:chat_group/core/widget/button_custom.dart';
import 'package:chat_group/core/widget/custom_google_button.dart';
import 'package:chat_group/core/widget/ordivider.dart';
import 'package:chat_group/features/authapp/presentation/view/widgets/textbuttoncustom.dart';
import 'package:chat_group/features/authapp/presentation/view/widgets/textfield_custom.dart';
import 'package:flutter/material.dart';

class Regesterview extends StatelessWidget {
  const Regesterview({super.key});
  static String id = RouteManager.kResgesterview;
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
            Image.asset(AssetsManager.klogo, height: 200),
            SizedBox(height: Hightmanager.h20),
            TextFormFieldCustom(
              colorenable: kSecondryColor,
              colorfocus: kPrimaryColor,
              hintlabel: Textmanager.kEnterEmail,
            ),
            TextFormFieldCustom(
              colorenable: kSecondryColor,
              colorfocus: kPrimaryColor,
              obscureText: true,
              hintlabel: Textmanager.kEnterPassword,
            ),
            SizedBox(height: Hightmanager.h20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  Textmanager.kHaveAccount,
                  style: Theme.of(context).textTheme.titleMedium!,
                ),
                TextbuttonCustom(
                    onPressed: () {},
                    textbutton: Textmanager.klogin,
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
                Navigator.pushNamed(context, CompleteProfile.id);
              },
              textbuttom: Textmanager.kcontinue,
            ),
            SizedBox(height: Hightmanager.h70),
          ],
        ),
      ),
    );
  }
}
