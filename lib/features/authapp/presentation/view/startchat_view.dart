import 'package:chat_group/constant.dart';
import 'package:chat_group/core/utils/assets_manager.dart';
import 'package:chat_group/core/utils/fontsizemanager.dart';
import 'package:chat_group/core/utils/routemanger.dart';
import 'package:chat_group/core/utils/textmanager.dart';
import 'package:chat_group/core/utils/widthandhightmanager.dart';
import 'package:chat_group/features/chatpage/presentation/view/chatview.dart';
import 'package:chat_group/core/widget/button_custom.dart';
import 'package:flutter/material.dart';

class StartchatView extends StatelessWidget {
  const StartchatView({super.key});
  static String id = RouteManager.kStartchat;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: Hightmanager.h50),
          Row(
            children: [
              SizedBox(width: Widthmanager.w30),
              Image.asset(
                AssetsManager.klogo,
                height: Hightmanager.h30,
              ),
            ],
          ),
          const Spacer(flex: 1),
          Image.asset(AssetsManager.klogo),
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
              Navigator.pushNamed(context, Chatview.id);
            },
          ),
          const Spacer(flex: 1),
        ],
      ),
    );
  }
}
