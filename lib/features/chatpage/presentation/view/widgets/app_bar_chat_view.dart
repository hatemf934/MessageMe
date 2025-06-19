import 'package:chat_group/constant.dart';
import 'package:chat_group/core/utils/colorsmanager.dart';
import 'package:chat_group/core/utils/widthandhightmanager.dart';
import 'package:chat_group/features/authapp/data/model/data_model.dart';
import 'package:chat_group/features/chatpage/presentation/view/widgets/title_app_bar_chat_view.dart';
import 'package:flutter/material.dart';

class AppBarChatView extends StatelessWidget implements PreferredSizeWidget {
  const AppBarChatView({super.key, required this.data});
  final DataModel data;
  @override
  Size get preferredSize => const Size.fromHeight(80);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: Icon(Icons.arrow_back_ios_new, color: Colorsmanager.kwhite),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      title: TitleAppBarChatView(data: data),
      toolbarHeight: Hightmanager.h80,
      backgroundColor: kPrimaryColor,
    );
  }
}
