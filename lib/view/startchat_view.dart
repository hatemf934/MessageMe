import 'package:chat_group/constant.dart';
import 'package:chat_group/core/colorsmanager.dart';
import 'package:chat_group/core/fontsizemanager.dart';
import 'package:chat_group/core/routemanger.dart';
import 'package:chat_group/core/textmanager.dart';
import 'package:chat_group/core/widthandhightmanager.dart';
import 'package:chat_group/view/accountview/view/account_view.dart';
import 'package:chat_group/view/chatview/views/chatview.dart';
import 'package:chat_group/widget/button_custom.dart';
import 'package:flutter/material.dart';

class StartchatView extends StatelessWidget {
  const StartchatView({super.key});
  static String id = RouteManager.kStartchat;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colorsmanager.kwhite,
      body: Column(
        children: [
          SizedBox(height: Hightmanager.h50),
          Row(
            children: [
              SizedBox(width: Widthmanager.w30),
              Image.asset(
                klogo,
                height: Hightmanager.h30,
              ),
            ],
          ),
          const Spacer(flex: 1),
          Image.asset(
            klogo,
          ),
          SizedBox(height: Hightmanager.h50),
          Text(
            kTitle,
            style: TextStyle(
                fontSize: Fontsizemanager.font30,
                color: kPrimaryColor,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(height: Hightmanager.h50),
          ButtonCustom(
            height: Hightmanager.h60,
            textbuttom: Textmanager.kStartchat,
            color: kPrimaryColor,
            colortext: kSecondryColor,
            onpressed: () {
              Navigator.pushNamed(context, AccountView.id);
            },
          ),
          const Spacer(flex: 1),
        ],
      ),
    );
  }
}
