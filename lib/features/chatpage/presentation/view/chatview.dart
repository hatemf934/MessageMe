import 'package:chat_group/constant.dart';
import 'package:chat_group/core/utils/colorsmanager.dart';
import 'package:chat_group/core/utils/paddingmanager.dart';
import 'package:chat_group/core/utils/routemanger.dart';
import 'package:chat_group/core/utils/textmanager.dart';
import 'package:chat_group/features/chatpage/presentation/view/widgets/BottomNavigationBarCustom.dart';
import 'package:chat_group/features/chatpage/presentation/view/widgets/appbar_chat.dart';
import 'package:flutter/material.dart';

class Chatview extends StatefulWidget {
  const Chatview({super.key});
  static String id = RouteManager.kChatview;

  @override
  State<Chatview> createState() => _ChatviewState();
}

class _ChatviewState extends State<Chatview> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              decoration: const BoxDecoration(
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
                      icon: const Icon(Icons.send, color: kSecondryColor)),
                ],
              ),
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBarCustom(
          onItemTapped: _onItemTapped,
          selectedIndex: _selectedIndex,
        ));
  }
}
