import 'package:chat_group/constant.dart';
import 'package:chat_group/core/colorsmanager.dart';
import 'package:chat_group/core/paddingmanager.dart';
import 'package:chat_group/core/routemanger.dart';
import 'package:chat_group/core/textmanager.dart';
import 'package:chat_group/widget/appbar_chat.dart';
import 'package:flutter/material.dart';

class Chatview extends StatelessWidget {
  const Chatview({super.key});
  static String id = RouteManager.kChatview;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colorsmanager.kwhite,
        ),
        title: const AppbarChat(),
        backgroundColor: kPrimaryColor,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(),
          Container(
            decoration: BoxDecoration(
                border:
                    Border(top: BorderSide(color: kPrimaryColor, width: 2))),
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
                    icon: Icon(Icons.send, color: kSecondryColor)),
              ],
            ),
          )
        ],
      ),
    );
  }
}
