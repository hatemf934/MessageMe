import 'package:chat_group/constant.dart';
import 'package:chat_group/core/utils/colorsmanager.dart';
import 'package:chat_group/core/utils/fontsizemanager.dart';
import 'package:chat_group/core/utils/widthandhightmanager.dart';
import 'package:chat_group/core/widget/showlogoutdialog.dart';
import 'package:chat_group/features/chatpage/presentation/view/widgets/appbar_chat.dart';
import 'package:flutter/material.dart';

class Appbarchatshome extends StatelessWidget implements PreferredSizeWidget {
  const Appbarchatshome({super.key});
  @override
  Size get preferredSize => const Size.fromHeight(80);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      title: const AppbarTitle(),
      backgroundColor: kPrimaryColor,
      toolbarHeight: Hightmanager.h80,
      actions: [
        IconButton(
          icon: Icon(Icons.logout,
              size: Fontsizemanager.font30, color: Colorsmanager.kwhite),
          onPressed: () {
            showLogutDialog(context);
          },
        ),
        SizedBox(width: Widthmanager.w10),
      ],
    );
  }
}
