import 'package:chat_group/features/chatpage/presentation/view/widgets/chat_home_item.dart';
import 'package:flutter/material.dart';

class ChatHomeItemList extends StatelessWidget {
  const ChatHomeItemList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return const ChatHomeItem();
        });
  }
}
