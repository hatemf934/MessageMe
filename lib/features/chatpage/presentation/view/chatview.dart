import 'package:chat_group/constant.dart';
import 'package:chat_group/core/utils/colorsmanager.dart';
import 'package:chat_group/core/utils/paddingmanager.dart';
import 'package:chat_group/core/utils/routemanger.dart';
import 'package:chat_group/core/utils/textmanager.dart';
import 'package:chat_group/core/utils/widthandhightmanager.dart';
import 'package:chat_group/features/authapp/data/model/data_model.dart';
import 'package:chat_group/features/chatpage/presentation/view/widgets/app_bar_chat_view.dart';
import 'package:flutter/material.dart';

class Chatview extends StatelessWidget {
  const Chatview({super.key});
  static String id = RouteManager.kChatview;

  @override
  Widget build(BuildContext context) {
    final DataModel selectedChat =
        ModalRoute.of(context)?.settings.arguments as DataModel;
    return SafeArea(
      child: Scaffold(
        appBar: AppBarChatView(
          data: selectedChat,
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
