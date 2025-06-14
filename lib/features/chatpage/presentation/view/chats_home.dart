import 'package:chat_group/core/utils/routemanger.dart';
import 'package:chat_group/features/chatpage/presentation/view/widgets/app_bar_chats.dart';
import 'package:chat_group/features/chatpage/presentation/view/widgets/chat_home_item_list.dart';
import 'package:chat_group/features/chatpage/presentation/view/widgets/floating_action_button.dart';
import 'package:flutter/material.dart';

class ChatsHome extends StatelessWidget {
  const ChatsHome({super.key});
  static String id = RouteManager.kChatsHome;
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ChatHomeItemList(),
      appBar: Appbarchatshome(),
      floatingActionButton: CustomFloatingActionButton(),
    );
  }
}
