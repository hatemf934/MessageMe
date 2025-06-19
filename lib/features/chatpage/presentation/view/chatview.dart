import 'package:chat_group/constant.dart';
import 'package:chat_group/core/utils/colorsmanager.dart';
import 'package:chat_group/core/utils/paddingmanager.dart';
import 'package:chat_group/core/utils/routemanger.dart';
import 'package:chat_group/core/utils/textmanager.dart';
import 'package:chat_group/core/utils/widthandhightmanager.dart';
import 'package:chat_group/features/chatpage/presentation/view/widgets/appbar_chat.dart';
import 'package:flutter/material.dart';

class Chatview extends StatelessWidget {
  const Chatview({super.key});
  static String id = RouteManager.kChatview;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colorsmanager.kwhite,
          ),
          title: const AppbarTitle(),
          backgroundColor: kPrimaryColor,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(),
            Container(
              decoration: BoxDecoration(
                  border: Border(
                      top: BorderSide(
                          color: kPrimaryColor, width: Widthmanager.w2))),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      onChanged: (value) {},
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: Paddingmanager.p10,
                              vertical: Paddingmanager.p20),
                          hintStyle: TextStyle(color: Colorsmanager.kMaingrey),
                          hintText: Textmanager.kSendMessage,
                          border: InputBorder.none),
                    ),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.send, color: kSecondryColor)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
