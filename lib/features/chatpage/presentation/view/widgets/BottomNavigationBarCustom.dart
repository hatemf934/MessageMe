import 'package:chat_group/constant.dart';
import 'package:chat_group/core/utils/colorsmanager.dart';
import 'package:chat_group/core/utils/fontsizemanager.dart';
import 'package:chat_group/core/utils/paddingmanager.dart';
import 'package:chat_group/core/utils/textmanager.dart';
import 'package:chat_group/core/utils/textmanager_account.dart';
import 'package:chat_group/features/account/presentation/view/account_view.dart';
import 'package:chat_group/features/chatpage/presentation/view/chats_home.dart';
import 'package:flutter/material.dart';

class BottomNavigationBarCustom extends StatelessWidget {
  const BottomNavigationBarCustom(
      {super.key, required this.onItemTapped, required this.selectedIndex});
  final Function(int) onItemTapped;
  final int selectedIndex;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: Paddingmanager.p20),
      child: Container(
        decoration: BoxDecoration(
          color: Colorsmanager.kwhite,
        ),
        child: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, ChatsHome.id);
                },
                icon: Icon(
                  Icons.chat,
                  size: Fontsizemanager.font30,
                  color: selectedIndex == 0
                      ? kPrimaryColor
                      : Colorsmanager.kMaingrey,
                ),
              ),
              label: Textmanager.kChat,
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, AccountView.id);
                },
                icon: Icon(
                  Icons.person,
                  size: Fontsizemanager.font30,
                  color: selectedIndex == 1
                      ? kPrimaryColor
                      : Colorsmanager.kMaingrey,
                ),
              ),
              label: TextmanagerAccount.kAccount,
            ),
          ],
          currentIndex: selectedIndex,
          selectedItemColor: kPrimaryColor,
          unselectedItemColor: Colorsmanager.kMaingrey,
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          type: BottomNavigationBarType.fixed,
          elevation: 0,
          onTap: onItemTapped,
        ),
      ),
    );
  }
}
