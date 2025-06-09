import 'package:chat_group/core/utils/routemanger.dart';
import 'package:chat_group/features/chatpage/presentation/view/widgets/app_bar_chats.dart';
import 'package:flutter/material.dart';

class ChatsHome extends StatelessWidget {
  const ChatsHome({super.key});
  static String id = RouteManager.kChatsHome;
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: Appbarchatshome(),
    );
  }
}
